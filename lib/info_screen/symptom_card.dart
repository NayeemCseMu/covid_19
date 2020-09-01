import 'package:flutter/material.dart';

import '../constatnts.dart';
class SymptomCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;

  const SymptomCard({
    Key key,
    this.image,
    this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            isActive
                ? BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 20,
                color: kActiveShadowColor)
                : BoxShadow(
                offset: Offset(0, 3), blurRadius: 6, color: kShadowColor)
          ]),
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(
            height: kDefaultPadding / 4,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: kTextStyle,
          ),
        ],
      ),
    );
  }
}