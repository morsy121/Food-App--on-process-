import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/modules/MenuScreen/items_screen.dart';
import 'package:foodapp/shared/components/Navigator.dart';
import 'package:foodapp/shared/components/custom_text_field.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomTextField(
                    hintText: 'Search',
                    color: const Color(0xffF2F2F2),
                    prefixIcon: Icons.search),
              ),
              SizedBox(height: 20),
              Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 130,
                        height: 600,
                        decoration: BoxDecoration(
                            color: Color(0xffFC6011),
                            borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(60),
                                topEnd: Radius.circular(60))),
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 460,
                        child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return InkWell(
                                  onTap: () {
                                    navigateTo(context, MenuSetails());
                                  },
                                  child: menuItem());
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 20),
                            itemCount: 4),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem() => Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Food',
                  style: TextStyle(fontSize: 33),
                ),
                Text('120 item')
              ],
            ),
            height: 100,
            width: 255.h,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(2, 2),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(40),
                    topLeft: Radius.circular(40))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/logo.jpg', fit: BoxFit.cover),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(2, 2),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xffFC6011),
                    )),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(2, 2),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          ),
        ],
      );
}
