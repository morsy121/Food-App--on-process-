import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/shared/components/Navigator.dart';
import 'package:foodapp/shared/components/custom_default_button.dart';
import 'package:foodapp/shared/components/custom_text_field.dart';

import '../../core/Colors/colors.dart';
import 'Otp_screen.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          const Center(
            child: Text(
              'Reset Password',
              style: TextStyle(
                fontFamily: 'Metropolis',
                fontSize: 30,
                color: Color(0xff4a4b4d),
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Please enter your email to receive a \n link to  create a new password via email',
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontSize: 15,
              color: Color(0xff7c7d7e),
              height: 1.4285714285714286,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 13, right: 13, bottom: 13),
            child: CustomTextField(
              hintText: 'Your Email',
              maxLines: 1,
              color: const Color(0xffF2F2F2),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 13, right: 13, bottom: 20),
            child: DefaultButton(
              text: 'Send',
              background: mainColor,
              function: () {
                navigateTo(context, const OtpScreen());
              },
              colorborder: mainColor,
              height: 65,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
