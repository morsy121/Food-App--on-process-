import 'package:flutter/material.dart';
import 'package:foodapp/core/Colors/colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      required this.color});
  final String hintText;
  final int maxLines;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      cursorColor: mainColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(25),
        fillColor: color,
        filled: true,
        hintStyle: const TextStyle(
          color: Color(0xffB6B7B7),
        ),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(mainColor),
      ),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: BorderSide(color: color ?? Colors.white, width: 2));
  }
}
