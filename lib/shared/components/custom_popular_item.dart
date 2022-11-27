import 'package:flutter/material.dart';
import 'package:foodapp/core/Colors/colors.dart';

class CustomPopularItem extends StatelessWidget {
  const CustomPopularItem({super.key, this.image, this.title, this.rating});
  final String? image;
  final String? title;
  final String? rating;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("$image"),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "$title",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: mainColor,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "$rating",
                style: TextStyle(color: Color(0xffB6B7B7), fontSize: 12),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                " (124 ratings) Café",
                style: TextStyle(color: Color(0xffB6B7B7), fontSize: 12),
              ),
              Text(
                " Western Food",
                style: TextStyle(color: Color(0xffB6B7B7), fontSize: 12),
              ),
            ],
          ),
        )
      ],
    );
  }
}
