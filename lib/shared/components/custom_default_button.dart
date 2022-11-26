import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {super.key,
      this.background,
      this.function,
      this.height,
      this.icon,
      this.colorborder,
      this.textcolor,
      this.text,
      this.width});
  final double? width;
  final double? height;
  final Color? textcolor;
  final Color? colorborder;
  final Color? background;
  final Function()? function;
  final String? text;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: background,
            minimumSize: Size(width!, height!),
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 2, color: colorborder!),
                borderRadius: BorderRadius.circular(
                  30,
                ))),
        onPressed: function,
        child: Text(
          text!,
          style: TextStyle(fontSize: 18, color: textcolor),
        ));
  }
}
