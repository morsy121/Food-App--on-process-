import 'package:flutter/material.dart';

class CustomMoreScreenItem extends StatelessWidget {
  const CustomMoreScreenItem({super.key, this.icon, this.text});
  final IconData? icon;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
              color: Color(0xffF6F6F6),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xffD8D8D8),
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  icon,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "$text",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Positioned(
          left: 305,
          top: 25,
          child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(Icons.arrow_forward_ios_rounded)),
        ),
      ],
    );
  }
}
