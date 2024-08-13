import 'package:intl/intl.dart';

class HumanFormats {
  static String formatCompactNumber(double number, [int decimals = 0]) {
    final formatterNumber = NumberFormat.compactCurrency(
            decimalDigits: decimals, symbol: '', locale: 'en')
        .format(number);

    return formatterNumber;
  }

  // static String formatSingleDecimal(double number) {
  //   final formatterNumber = NumberFormat('#.0', 'en').format(number);

  //   return formatterNumber;
  // }
}
