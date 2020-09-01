import 'package:flutter/material.dart';

import '../../constatnts.dart';

class Counter extends StatelessWidget {
  final Color color;
  final String number;
  final title;

  const Counter({
    Key key,
    this.color,
    this.number,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: color.withOpacity(0.25),
            shape: BoxShape.circle,
          ),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(color: color, width: 2)),
          ),
        ),
        SizedBox(height: kDefaultPadding/2),
        Text(
          number,
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'Montserrat',
              color: color.withOpacity(0.8)),
        ),

        Text(
          title,
          style: TextStyle(
              fontSize: 16, fontFamily: 'Montserrat', color: kTextColor.withOpacity(0.5)),
        ),
      ],
    );
  }
}


