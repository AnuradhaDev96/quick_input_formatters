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
  quick_input_formatters ^0.0.1
```

## Usage

Usage of DecimalTextInputFormatter in TextField/TextFormField
to format a number input value with 2 decimal places.

```dart
Widget get currencyTextField => TextField(
  inputFormatters: [
    // Use flutter input formatters to improve support
    FilteringTextInputFormatter.deny(RegExp(r'[a-zA-Z]')), // Denies letters
    FilteringTextInputFormatter.deny(RegExp(r' ')), // Denies whitespaces
    FilteringTextInputFormatter.deny(RegExp(r'-')), // Denies -

    // Use this input formatter to convert number inputs with decimal places
    // (Here it is 2 decimal places because user inputs currency values,
    DecimalTextInputFormatter(2)
  ],
);
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
