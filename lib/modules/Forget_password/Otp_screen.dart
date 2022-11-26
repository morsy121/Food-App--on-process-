import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:foodapp/core/Colors/colors.dart';
import 'package:foodapp/modules/Forget_password/New_password_screen.dart';
import 'package:foodapp/shared/components/Navigator.dart';
import 'package:foodapp/shared/components/custom_default_button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              'We have sent an OTP to \n your Mobile',
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
            'Please check your mobile number 071*****12 \n continue to reset your password',
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
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: OtpTextField(
              fieldWidth: 60,
              borderRadius: BorderRadius.circular(10),
              numberOfFields: 4,
              cursorColor: mainColor,
              focusedBorderColor: mainColor,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {},
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 13, right: 13, bottom: 20),
            child: DefaultButton(
              text: 'Next',
              background: mainColor,
              function: () {
                navigateTo(context, const NewPasswordScreen());
              },
              colorborder: mainColor,
              height: 65,
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Didn\'t Receive?  ',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w500,
                    color: Color(0xff7c7d7e),
                  ),
                ),
                Text(
                  'Click Here',
                  style: TextStyle(
                    color: Color(0xfffc6011),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
