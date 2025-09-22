import 'dart:async';

import 'package:flutter/material.dart';

class Custom {
  static customText({
    required String text,
    required double FontSize,
    required Color color,
    required FontWeight FontWeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: FontSize,
        color: color,
        fontWeight: FontWeight,
      ),
    );
  }
  static customTextField({
    required String HintText,
    required Icon PreFixIcon,
    required TextEditingController Controller,
}){
    return TextFormField(
      controller: Controller,
      decoration: InputDecoration(
        hintText: HintText,
        prefixIcon: PreFixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(2))
      ),
    );
  }
}
