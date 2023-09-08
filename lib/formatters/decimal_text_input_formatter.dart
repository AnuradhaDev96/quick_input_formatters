import 'dart:math';

import 'package:flutter/services.dart';

/// This can be used to input decimal values.
/// [decimalPoints] specifies the number of decimal places should be added after decimal point.
///
/// Use with [FilteringTextInputFormatter.digitsOnly] for best outcome.
class DecimalTextInputFormatter extends TextInputFormatter {
  final int decimalPoints;

  DecimalTextInputFormatter(this.decimalPoints);

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    double doubleValue = double.tryParse(newValue.text) ?? 0;
    String formattedValue = (doubleValue / (pow(10, decimalPoints))).toStringAsFixed(decimalPoints);

    return newValue.copyWith(text: formattedValue, selection: TextSelection.collapsed(offset: formattedValue.length));
  }
}
