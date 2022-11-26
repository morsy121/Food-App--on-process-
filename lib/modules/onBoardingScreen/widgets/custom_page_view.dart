import 'package:flutter/material.dart';
import 'package:foodapp/core/utils/assets.dart';
import 'page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, @required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      controller: pageController,
      children: const [
        PageViewItem(
          image: AssetsData.onBoarding1,
          title: 'Find Food You Love',
          subTitle:
              'Discover the best foods from over 1,000 \n restaurants and fast delivery to your doorstep',
        ),
        PageViewItem(
          image: AssetsData.onBoarding2,
          title: 'Fast Delivery',
          subTitle:
              'Fast food delivery to your home, office \n wherever you are',
        ),
        PageViewItem(
          image: AssetsData.onBoarding3,
          title: 'Live Tracking',
          subTitle:
              'Real time tracking of your food on the app \n once  you placed the order',
        ),
      ],
    );
  }
}
