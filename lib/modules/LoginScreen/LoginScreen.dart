import 'package:flutter/material.dart';
import 'package:foodapp/core/Colors/colors.dart';
import 'package:foodapp/modules/Forget_password/reset_password.dart';
import 'package:foodapp/modules/SignUpScreen/SignUp_Screen.dart';
import 'package:foodapp/shared/components/Navigator.dart';
import 'package:foodapp/shared/components/custom_default_button.dart';
import 'package:foodapp/shared/components/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 55,
              ),
              const Center(
                child: Text(
                  'Login',
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
                'Add your details to login',
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
                padding: const EdgeInsets.only(
                    left: 20, top: 13, right: 13, bottom: 13),
                child: CustomTextField(
                  hintText: 'Your Email',
                  maxLines: 1,
                  color: const Color(0xffF2F2F2),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 13, right: 13, bottom: 13),
                child: CustomTextField(
                  hintText: 'Password',
                  maxLines: 1,
                  color: const Color(0xffF2F2F2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 13, right: 13, bottom: 20),
                child: DefaultButton(
                  text: 'Login',
                  background: mainColor,
                  function: () {
                    navigateTo(context, const SignUpScreen());
                  },
                  colorborder: mainColor,
                  height: 65,
                  width: double.infinity,
                ),
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, const ResetPassword());
                },
                child: const Text(
                  'Forgot your password?',
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: 14,
                    color: Color(0xff7c7d7e),
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'or Login With',
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 14,
                  color: Color(0xff7c7d7e),
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 18, right: 13, bottom: 13),
                child: DefaultButton(
                  icon: Icons.facebook,
                  text: 'Login With Facebook',
                  background: const Color(0xff367FC0),
                  function: () {},
                  height: 65,
                  colorborder: const Color(0xff367FC0),
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 18, right: 13, bottom: 10),
                child: DefaultButton(
                  icon: Icons.facebook,
                  text: 'Login With Google',
                  background: const Color(0xffDD4B39),
                  function: () {},
                  height: 65,
                  colorborder: const Color(0xffDD4B39),
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, const SignUpScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Don\'t have an Account? ',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7c7d7e),
                      ),
                    ),
                    Text(
                      'Sign Up',
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
        ),
      ),
    );
  }
}
