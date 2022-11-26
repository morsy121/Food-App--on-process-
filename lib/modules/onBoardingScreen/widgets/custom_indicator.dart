import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/core/Colors/colors.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, @required this.dotsIndex});
  final double? dotsIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
        dotsCount: 3,
        position: dotsIndex!,
        decorator: DotsDecorator(
            size: Size(12, 12),
            activeSize: Size(12, 12),
            color: Colors.transparent,
            activeColor: mainColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: mainColor))));
  }
}
