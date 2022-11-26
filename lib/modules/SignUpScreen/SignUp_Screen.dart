import 'package:flutter/material.dart';
import 'package:foodapp/modules/LoginScreen/LoginScreen.dart';
import 'package:foodapp/shared/components/Navigator.dart';
import 'package:foodapp/shared/components/custom_default_button.dart';
import 'package:foodapp/shared/components/custom_text_field.dart';
import 'package:foodapp/shared/components/default_text.dart';
import '../../core/Colors/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              const Center(
                child: CustomDefaultText(
                  title: "Sign Up",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomDefaultText(
                title: 'Add your details to sign up',
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 13, right: 13, bottom: 13),
                child: CustomTextField(
                  hintText: 'Name',
                  maxLines: 1,
                  color: const Color(0xffF2F2F2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 13, right: 13, bottom: 13),
                child: CustomTextField(
                  hintText: 'Email',
                  maxLines: 1,
                  color: const Color(0xffF2F2F2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 13, right: 13, bottom: 13),
                child: CustomTextField(
                  hintText: 'Mobile No',
                  maxLines: 1,
                  color: const Color(0xffF2F2F2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 13, right: 13, bottom: 13),
                child: CustomTextField(
                  hintText: 'address',
                  maxLines: 1,
                  color: Color(0xffF2F2F2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 13, right: 13, bottom: 13),
                child: CustomTextField(
                  hintText: 'password',
                  maxLines: 1,
                  color: const Color(0xffF2F2F2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 13, right: 13, bottom: 13),
                child: CustomTextField(
                  hintText: 'confirm password',
                  maxLines: 1,
                  color: const Color(0xffF2F2F2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 13, right: 13, bottom: 20),
                child: DefaultButton(
                  text: 'Sign Up',
                  background: mainColor,
                  function: () {},
                  colorborder: mainColor,
                  height: 65,
                  width: double.infinity,
                ),
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, LoginScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Already have an Account? ',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7c7d7e),
                      ),
                    ),
                    Text(
                      'Login',
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
