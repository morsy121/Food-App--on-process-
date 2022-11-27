import 'package:flutter/material.dart';
import 'package:foodapp/core/Colors/colors.dart';
import 'package:foodapp/shared/components/custom_default_button.dart';
import 'package:foodapp/shared/components/custom_text_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lates Offers',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                width: 150,
                height: 150,
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: Image.asset("assets/images/avtar.jpg")),
                    Positioned(
                      top: 128,
                      left: 35,
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.camera_alt_rounded,
                          color: Color(0xff7C7D7E),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: mainColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Edit Profile")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Hi There Morsy!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Sign out",
                  style: TextStyle(color: Color(0xff8C8C8C)),
                )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: CustomTextField(
                hintText: "Name",
                maxLines: 1,
                color: Color(0xffF2F2F2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: CustomTextField(
                hintText: "Email",
                maxLines: 1,
                color: Color(0xffF2F2F2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: CustomTextField(
                hintText: "Mobile No",
                maxLines: 1,
                color: Color(0xffF2F2F2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: CustomTextField(
                hintText: "Address",
                maxLines: 1,
                color: Color(0xffF2F2F2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: CustomTextField(
                hintText: "password",
                maxLines: 1,
                color: Color(0xffF2F2F2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: CustomTextField(
                hintText: "Confirm Password",
                maxLines: 1,
                color: Color(0xffF2F2F2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: DefaultButton(
                background: mainColor,
                textcolor: Colors.white,
                height: 60,
                width: double.infinity,
                function: () {},
                colorborder: mainColor,
                text: "Save",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
