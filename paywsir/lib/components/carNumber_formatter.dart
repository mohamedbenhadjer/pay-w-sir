import 'package:flutter/services.dart';

class CarNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    StringBuffer buffer = StringBuffer();

    for (int i = 0; i < newValue.text.length; i++) {
      buffer.write(newValue.text[i]);

      if ((i == 4 || i == 7) && i != newValue.text.length) {
        // Insert a dash after the first 5 and 9 characters
        buffer.write("  -  ");
      }
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(
        offset: buffer.toString().length,
      ),
    );
  }
}
