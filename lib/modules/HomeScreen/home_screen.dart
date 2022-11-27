import 'package:flutter/material.dart';
import 'package:foodapp/core/Colors/colors.dart';
import 'package:foodapp/core/utils/assets.dart';
import 'package:foodapp/shared/components/custom_popular_item.dart';
import 'package:foodapp/shared/components/custom_recent_item.dart';
import 'package:foodapp/shared/components/custom_text_field.dart';
import 'package:foodapp/shared/cubit/cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Good morning Akila!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                  size: 25,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text("Delivering to"),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: const [
                Text(
                  "Current Location",
                  style: TextStyle(
                      color: Color(0xff7C7D7E),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: mainColor,
                  size: 30,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: CustomTextField(
              hintText: "Search Food",
              color: Color(0xffF2F2F2),
              prefixIcon: Icons.search,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              height: 160,
              child: Expanded(
                child: ListView.separated(
                  itemCount: FoodAppCubit.get(context).images.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 15,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    FoodAppCubit.get(context).images[index],
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          FoodAppCubit.get(context).titles[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Popular Restaurents",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(color: mainColor),
                    ))
              ],
            ),
          ),
          const CustomPopularItem(
            image: AssetsData.tuktuk,
            rating: "4.9",
            title: "Minute by tuk tuk",
          ),
          const CustomPopularItem(
            image: AssetsData.cafedenoir,
            rating: "4.9",
            title: "Café de Noir",
          ),
          const CustomPopularItem(
            image: AssetsData.tella,
            rating: "4.9",
            title: "Bakes by Tella",
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Most Popular",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(color: mainColor),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 220,
            child: Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 200,
                              height: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  FoodAppCubit.get(context)
                                      .mostPopularImage[index],
                                  fit: BoxFit.cover,
                                ),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              FoodAppCubit.get(context).mostPopularTitle[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              children: const [
                                Text("Cafe",
                                    style: TextStyle(
                                        color: Color(0xffB6B7B7),
                                        fontSize: 12)),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Western Food",
                                    style: TextStyle(
                                        color: Color(0xffB6B7B7),
                                        fontSize: 12)),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: mainColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      color: Color(0xffB6B7B7), fontSize: 12),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 0,
                    );
                  },
                  itemCount: FoodAppCubit.get(context).mostPopularImage.length),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recent Items",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(color: mainColor),
                    ))
              ],
            ),
          ),
          const CustomRecentItem(
            image: AssetsData.mulberry,
            rating: "4.9",
            title: "Mulberry Pizza by Josh",
          ),
          const CustomRecentItem(
            image: AssetsData.barita,
            rating: "2.3",
            title: "Barita",
          ),
          const CustomRecentItem(
            image: AssetsData.pizzaRush,
            rating: "4.2",
            title: "Pizza Rush Hour",
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
