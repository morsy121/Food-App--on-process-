import 'package:flutter/material.dart';
import 'package:foodapp/core/Colors/colors.dart';
import 'package:foodapp/shared/components/custom_default_button.dart';
import 'package:foodapp/shared/components/custom_text_field.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
              'New Password',
              style: TextStyle(
                fontFamily: 'Metropolis',
                fontSize: 25,
                color: Color(0xff4a4b4d),
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Please enter your email to receive a \n  link to  create a new password via email',
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 13, right: 13, bottom: 13),
            child: CustomTextField(
              hintText: 'New Password',
              maxLines: 1,
              color: Color(0xffF2F2F2),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 13, right: 13, bottom: 13),
            child: CustomTextField(
              hintText: 'Confirm Password',
              maxLines: 1,
              color: Color(0xffF2F2F2),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 13, right: 13, bottom: 20),
            child: DefaultButton(
              text: 'Next',
              background: mainColor,
              function: () {},
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
