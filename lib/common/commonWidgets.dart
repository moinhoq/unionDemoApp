

import 'package:flutter/material.dart';

class CommonWidget{
  static TextFormField buildTextFormField( {
    required final controller,
    required String labelText,
    IconData? prefixIcon,
    IconData? suffixIcon,
    bool? readOnly,
    bool? obscured,
    // Function()? onTap,
  }) {
    return TextFormField(
      controller: TextEditingController(),
      decoration: InputDecoration(
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
      ),
    );
  }
}