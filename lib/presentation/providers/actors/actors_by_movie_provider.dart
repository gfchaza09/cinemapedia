import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/domain/entities/actor.dart';

final actorsByMovieProvider =
    StateNotifierProvider<ActorsByMovieNotifier, Map<String, List<Actor>>>(
        (ref) {
  final getActors = ref.watch(actorsRepositoryProvider).getActorsByMovie;

  return ActorsByMovieNotifier(getActors: getActors);
});

/*
{
  '50562': List<Actor>,
  '50563': List<Actor>,
  '50564': List<Actor>,
  '50565': List<Actor>,
}
*/

typedef GetActorsCallback = Future<List<Actor>> Function(String movieId);

class ActorsByMovieNotifier extends StateNotifier<Map<String, List<Actor>>> {
  final GetActorsCallback getActors;

  ActorsByMovieNotifier({required this.getActors}) : super({});

  Future<void> loadActors(String movieId) async {
    if (state[movieId] != null) return;

    final List<Actor> actors = await getActors(movieId);

    state = {...state, movieId: actors};
  }
}
