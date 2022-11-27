import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/shared/cubit/cubit.dart';
import 'package:foodapp/shared/cubit/states.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FoodAppCubit(),
      child: BlocConsumer<FoodAppCubit, FoodAppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              body: FoodAppCubit.get(context)
                  .bottomscreen[FoodAppCubit.get(context).curreentIndex],
              bottomNavigationBar: BottomNavigationBar(
                  elevation: 0,
                  iconSize: 20,
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: const Color(0xffFC6011),
                  backgroundColor: Colors.white,
                  selectedIconTheme: const IconThemeData(size: 30),
                  unselectedItemColor: const Color(0xff9D9D9D),
                  currentIndex: FoodAppCubit.get(context).curreentIndex,
                  onTap: (index) {
                    FoodAppCubit.get(context).changeBottom(index);
                  },
                  items: const [
                    BottomNavigationBarItem(
                        icon: (Icon(Icons.menu)), label: 'Menu'),
                    BottomNavigationBarItem(
                        icon: (Icon(Icons.local_offer)), label: 'Offers'),
                    BottomNavigationBarItem(
                        icon: (Icon(Icons.home)), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: (Icon(Icons.person)), label: 'Profile'),
                    BottomNavigationBarItem(
                        icon: (Icon(Icons.more)), label: 'More'),
                  ]));
        },
      ),
    );
  }
}


// BottomAppBar(
//                 shape: CircularNotchedRectangle(),
//                 notchMargin: 15,
//                 child: Container(
//                   height: 70,
//                   margin: EdgeInsets.only(left: 12.0, right: 12.0),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton(
//                           onPressed: () 
//                           {
                            
//                           },
//                           icon: Icon(
//                             Icons.menu,
//                             size: 25,
//                             color: FoodAppCubit.get(context).curreentIndex == 0
//                                 ? Color(0xffFC6011)
//                                 : Colors.grey,
//                           )),
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.offline_bolt,
//                             color: FoodAppCubit.get(context).curreentIndex == 1
//                                 ? Color(0xffFC6011)
//                                 : Colors.grey,
//                             size: 25,
//                           )),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.person,
//                             size: 25,
//                             color: FoodAppCubit.get(context).curreentIndex == 2
//                                 ? Color(0xffFC6011)
//                                 : Colors.grey,
//                           )),
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.more,
//                             size: 25,
//                             color: FoodAppCubit.get(context).curreentIndex == 3
//                                 ? Color(0xffFC6011)
//                                 : Colors.grey,
//                           )),
//                     ],
//                   ),
//                 ),
//               )