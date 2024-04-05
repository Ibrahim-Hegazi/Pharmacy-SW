import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Custom input formatter to limit the range of values
class RangeTextInputFormatter extends TextInputFormatter {
  final int? min;
  final int? max;

  RangeTextInputFormatter({this.min, this.max});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    try {
      final intValue = int.parse(newValue.text);
      if (min != null && intValue < min!) {
        return TextEditingValue(
          text: min.toString(),
          selection: TextSelection.collapsed(offset: min.toString().length),
        );
      } else if (max != null && intValue > max!) {
        return TextEditingValue(
          text: max.toString(),
          selection: TextSelection.collapsed(offset: max.toString().length),
        );
      }
    } catch (e) {}

    return newValue;
  }
}
