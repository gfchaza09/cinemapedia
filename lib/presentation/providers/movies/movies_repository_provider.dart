import 'package:cinemapedia/infraestructure/datasources/the_moviedb_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/infraestructure/repositories/movie_repository_implementation.dart';

// Este repositorio es inmutable
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImplementation(TheMoviedbDatasurce());
});
