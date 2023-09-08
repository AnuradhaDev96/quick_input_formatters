Custom text input formatters that can be used with TextField and TextFormField widgets
are available in this package.

## Features

- Credit/Debit card number formatter
- Credit/Debit card expiration date formatter
- Decimal values formatter useful for currency values etc.

## Installation

Add in the `pubspec.yaml`
```yaml
dependencies:
  quick_input_formatters ^0.0.4
```

## Usage

Usage of DecimalTextInputFormatter in TextField/TextFormField
to format a number input value with 2 decimal places.
You should use FilteringTextInputFormatter.digitsOnly with DecimalTextInputFormatter formatter.

```dart
Widget get currencyTextField => TextField(
  inputFormatters: [
    // Use thi input formatter to improve outcome
    FilteringTextInputFormatter.digitsOnly,

    // Use this input formatter to convert number inputs with decimal places
    // (Here it is 2 decimal places because user inputs currency values,
    DecimalTextInputFormatter(2)
  ],
);
```
