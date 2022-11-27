import 'package:flutter/material.dart';
import 'package:foodapp/shared/components/custom_morescreen_item.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 30,
        ),
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            CustomMoreScreenItem(
              icon: Icons.payment_rounded,
              text: "Payment Details",
            ),
            SizedBox(
              height: 10,
            ),
            CustomMoreScreenItem(
              icon: Icons.opacity_rounded,
              text: "My Order",
            ),
            SizedBox(
              height: 10,
            ),
            CustomMoreScreenItem(
              icon: Icons.notifications,
              text: "Notification",
            ),
            SizedBox(
              height: 10,
            ),
            CustomMoreScreenItem(
              icon: Icons.inbox,
              text: "inbox",
            ),
            SizedBox(
              height: 10,
            ),
            CustomMoreScreenItem(
              icon: Icons.contact_mail,
              text: "About Us",
            ),
          ],
        ),
      ),
    );
  }
}
