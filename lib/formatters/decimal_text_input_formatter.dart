import 'package:flutter/services.dart';

/// This can be used to input decimal values.
/// [decimalPoints] specifies the number of decimal places should be added after decimal point.
class DecimalTextInputFormatter extends TextInputFormatter {
  final int decimalPoints;

  DecimalTextInputFormatter(this.decimalPoints);

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isNotEmpty) {
      final parsedValue = double.tryParse(newValue.text);
      if (parsedValue != null) {
        final formattedValue = parsedValue.toStringAsFixed(decimalPoints);

        return newValue.copyWith(text: formattedValue);
      }
    }
    return newValue;
  }
}
