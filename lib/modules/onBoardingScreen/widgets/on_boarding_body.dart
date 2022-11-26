import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/core/Colors/colors.dart';
import 'package:foodapp/modules/LoginScreen/LoginScreen.dart';
import 'package:foodapp/modules/Welcom-Auth-Screen/Welcom_Auth_Screen.dart';
import 'package:foodapp/shared/components/Navigator.dart';
import 'package:foodapp/shared/components/custom_default_button.dart';
import 'custom_indicator.dart';
import 'custom_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          bottom: 380,
          left: 160,
          child: CustomIndicator(
            dotsIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: DefaultButton(
                width: double.infinity,
                text: 'Next',
                colorborder: mainColor,
                background: mainColor,
                function: () {
                  navigateTo(context, const WelcomAuthScreen());
                },
                height: 55)),
      ],
    );
  }
}
