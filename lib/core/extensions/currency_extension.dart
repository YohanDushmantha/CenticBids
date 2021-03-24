import 'package:intl/intl.dart';

extension CurrencyExtension on String {
  String toCurrency() {
    try {
      return NumberFormat.currency(locale: "en_US", symbol: "¥")
          .format(double.parse(this));
    } on Exception {
      return NumberFormat.currency(
        locale: "en_US",
        symbol: "¥",
      ).format(0.00);
    }
  }
}
