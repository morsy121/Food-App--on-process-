import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Meal',
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFC6011)),
            ),
            Text(
              'Monkey',
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4A4B4D)),
            )
          ],
        ),
        const Text(
          'Food Delivery',
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontSize: 20,
            color: Color(0xff4a4b4d),
            letterSpacing: 2.36,
            height: 3.4,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
          softWrap: false,
        )
      ],
    );
  }
}
