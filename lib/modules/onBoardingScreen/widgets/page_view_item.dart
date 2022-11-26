import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.image, this.subTitle, this.title});
  final String? image;
  final String? title;
  final String? subTitle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 210,
          ),
          SizedBox(
              height: 160,
              child: Image.asset(
                image!,
                width: 400,
                height: 400,
              )),
          const SizedBox(
            height: 80,
          ),
          Text(
            title!,
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xff4a4b4d),
              fontWeight: FontWeight.w600,
            ),
            softWrap: false,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            subTitle!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              height: 1.5,
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.bold,
              color: Color(0xff7c7d7e),
            ),
            softWrap: false,
          )
        ],
      ),
    );
  }
}
