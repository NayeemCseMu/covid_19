import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constatnts.dart';
class MyHeader extends StatelessWidget {
  final String topText;
  final String bottomText;
  final String image;
  final Function press;
  final double offset;

  const MyHeader({
    Key key,
    @required this.size,
    this.topText,
    this.bottomText,
    this.image, this.press, this.offset,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        height: size.height * 0.4,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.topRight,
              colors: [
                Color(0xFF1976D2),
                Color(0xFF2196F3),
              ]),
          image: DecorationImage(
            image: AssetImage('assets/images/virus.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
                alignment: Alignment.topRight,
                child: GestureDetector(child: SvgPicture.asset('assets/icons/menu.svg'),
                onTap: press,)),
            SizedBox(height: 20),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset(
                      image,
                      width: 200,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 30,
                    child:
                    Text('$topText\n$bottomText', style: kHeadingTextStyle.copyWith(fontSize: 22)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}