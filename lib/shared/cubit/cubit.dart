import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/modules/HomeScreen/home_screen.dart';
import 'package:foodapp/modules/MenuScreen/menu_screen.dart';
import 'package:foodapp/modules/morescreen/morescreen.dart';
import 'package:foodapp/modules/profile_screen/profile_screen.dart';
import 'package:foodapp/shared/cubit/states.dart';
import '../../modules/OffersScreen/offers_screen.dart';

class FoodAppCubit extends Cubit<FoodAppStates> {
  FoodAppCubit() : super(FoodAPPInitaial());

  static FoodAppCubit get(context) => BlocProvider.of(context);

  int curreentIndex = 0;
  int? index;
  List<Widget> bottomscreen = [
    MenuScreen(),
    OffersScreen(),
    HomeScreen(),
    ProfileScreen(),
    MoreScreen(),
  ];

  void changeBottom(int index) {
    curreentIndex = index;
    emit(CoffeeChangeBottomNavBarState());
  }

  List<String> images = [
    "assets/images/offers.jpg",
    "assets/images/Sri Lankan.jpg",
    "assets/images/Italian.jpg",
    "assets/images/Indian.jpg",
  ];

  List<String> titles = [
    "Offers",
    "Sri Lankan",
    "Italian",
    "Indian",
  ];

  List<String> mostPopularImage = [
    "assets/images/Bambaa.jpg",
    "assets/images/Bambaa.jpg",
  ];

  List<String> mostPopularTitle = [
    "Café De Bambaa",
    "Burger by Bella",
  ];
}
