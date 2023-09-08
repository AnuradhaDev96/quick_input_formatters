import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_input_formatters/quick_input_formatters.dart';

void main() {
  runApp(const CurrencyTextFieldExample());
}

class CurrencyTextFieldExample extends StatelessWidget {
  const CurrencyTextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency field example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Currency field example'),
        ),
        body: Center(
          child: TextField(
            inputFormatters: [
              // Use flutter input formatters to improve support
              FilteringTextInputFormatter.deny(RegExp(r'[a-zA-Z]')), // Denies letters
              FilteringTextInputFormatter.deny(RegExp(r' ')), // Denies whitespaces
              FilteringTextInputFormatter.deny(RegExp(r'-')), // Denies -

              // Use this input formatter to convert number inputs with decimal places
              // (Here it is 2 decimal places because user inputs currency values,
              DecimalTextInputFormatter(2)
            ],
          ),
        ),
      ),
    );
  }
}
