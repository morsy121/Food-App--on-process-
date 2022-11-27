import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/shared/components/custom_text_field.dart';

class MenuSetails extends StatelessWidget {
  const MenuSetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Dessert',
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomTextField(
                hintText: 'Search',
                color: const Color(0xffF2F2F2),
                prefixIcon: Icons.search),
          ),
          Expanded(
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return item();
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: 10),
          )
        ],
      ),
    );
  }

  Widget item() => Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/premium-photo/cooked-meat-veggies-kebab-with-ketchup-sauce_23-2148651039.jpg?w=900'),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'French meat',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Color(0xffFC6011),
                    ),
                    Text(
                      '4.9',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFC6011)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'maked by morsy',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[200]),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Food',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[200]),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      );
}
