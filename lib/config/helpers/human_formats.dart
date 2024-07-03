import 'package:intl/intl.dart';

class HumanFormats {
  static String formatCompactNumber(double number) {
    final formatterNumber =
        NumberFormat.compactCurrency(decimalDigits: 0, symbol: '', locale: 'en')
            .format(number);

    return formatterNumber;
  }

  static String formatSingleDecimal(double number) {
    final formatterNumber = NumberFormat('#.0', 'en').format(number);

    return formatterNumber;
  }
}
