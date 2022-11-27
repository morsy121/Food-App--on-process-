import 'package:flutter/material.dart';
import 'package:foodapp/core/Colors/colors.dart';
import 'package:foodapp/shared/components/custom_default_button.dart';
import '../../core/utils/assets.dart';
import '../../shared/components/custom_popular_item.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "Find discounts , offers special \n meals and more!",
                style: TextStyle(color: Color(0xff7C7D7E), fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: DefaultButton(
                background: mainColor,
                textcolor: Colors.white,
                height: 35,
                width: 190,
                function: () {},
                colorborder: mainColor,
                text: "check offers",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomPopularItem(
              image: AssetsData.tuktuk,
              rating: "4.9",
              title: "Café de Noir",
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomPopularItem(
              image: AssetsData.cafedenoir,
              rating: "4.9",
              title: "isso",
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomPopularItem(
              image: AssetsData.tella,
              rating: "4.9",
              title: "Cafe beans",
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
