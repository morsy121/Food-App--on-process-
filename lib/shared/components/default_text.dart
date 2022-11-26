import 'package:flutter/material.dart';

class CustomDefaultText extends StatelessWidget {
  const CustomDefaultText({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      textAlign: TextAlign.center,
      softWrap: false,
      style: const TextStyle(
        fontFamily: 'Metropolis',
        fontSize: 15,
        color: Color(0xff7c7d7e),
        height: 1.4285714285714286,
      ),
    );
  }
}
