import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/core/Colors/colors.dart';
import 'package:foodapp/modules/LoginScreen/LoginScreen.dart';
import 'package:foodapp/modules/SignUpScreen/SignUp_Screen.dart';
import 'package:foodapp/shared/components/Navigator.dart';
import 'package:foodapp/shared/components/custom_default_button.dart';

import '../splashScreen/widgets/splash_screen_body.dart';

class WelcomAuthScreen extends StatelessWidget {
  const WelcomAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 333.h,
                  decoration: const BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80.h),
                  child: const Center(
                    child: CircleAvatar(
                      backgroundColor: mainColor,
                      radius: 120,
                      child: CircleAvatar(
                        radius: 110,
                        backgroundImage: AssetImage('assets/images/logo.jpg'),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const SplashScreenBody(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Discover the best foods from over 1,000 \n restaurants and fast delivery to your doorstep',
              style: TextStyle(
                fontFamily: 'Metropolis',
                fontSize: 15,
                color: Color(0xff7c7d7e),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
              child: DefaultButton(
                  text: 'Login',
                  background: mainColor,
                  function: () {
                    navigateTo(context, LoginScreen());
                  },
                  height: 65,
                  width: double.infinity,
                  colorborder: mainColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
              child: DefaultButton(
                  text: 'Create An Account ',
                  background: const Color(0xffFFFFFF),
                  function: () {
                    navigateTo(context, SignUpScreen());
                  },
                  height: 65,
                  width: double.infinity,
                  textcolor: mainColor,
                  colorborder: mainColor),
            ),
          ],
        ),
      ),
    );
  }
}
