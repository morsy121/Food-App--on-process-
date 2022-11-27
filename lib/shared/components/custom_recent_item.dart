import 'package:flutter/material.dart';
import 'package:foodapp/core/Colors/colors.dart';

class CustomRecentItem extends StatelessWidget {
  const CustomRecentItem({super.key, this.image, this.rating, this.title});
  final String? image;
  final String? title;
  final String? rating;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: double.infinity,
        height: 120,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("$image", width: 120, fit: BoxFit.cover),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "$title",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Cafe",
                        style: TextStyle(
                          color: Color(0xffB6B7B7),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Western Food",
                        style: TextStyle(
                          color: Color(0xffB6B7B7),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: mainColor,
                      ),
                      Text(
                        "$rating",
                        style: TextStyle(color: mainColor),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "(124 Ratings)",
                        style: TextStyle(
                          color: Color(0xffB6B7B7),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
