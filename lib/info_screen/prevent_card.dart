import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constatnts.dart';

class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const PreventCard({
    Key key,
    @required this.size,
    this.image,
    this.title,
    this.description,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 8), blurRadius: 24, color: kShadowColor)
                  ]),
            ),
            Image.asset(image),
            Positioned(
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
                height: 136,
                width: size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: kTitleTextStyle.copyWith(fontSize: 16),
                    ),
                    Text(
                      description,
                      style: kTitleTextStyle.copyWith(
                          fontSize: 12,
                          color: Colors.black.withOpacity(.8),
                          fontWeight: FontWeight.w500),
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: SvgPicture.asset('assets/icons/forward.svg')),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}