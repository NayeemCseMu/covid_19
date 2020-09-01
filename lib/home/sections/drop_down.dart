import 'package:flutter/material.dart';

import '../../constatnts.dart';
class DropDown extends StatelessWidget {
  const DropDown({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      width: double.infinity,
      decoration: BoxDecoration(
          color: kBackgroundWhiteColor,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: kTextBrownColor)),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.location_on,
            color: kDarkPrimaryColor_Blue,
          ),
          SizedBox(width: kDefaultPadding / 2),
          Expanded(
            child: DropdownButton(
              underline: SizedBox(),
              icon: Icon(
                Icons.expand_more,
                color: kTextColor,
              ),
              isExpanded: true,
              value: 'Bangladesh',
              items: ['Bangladesh', 'India', 'Pakistan']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                );
              }).toList(),
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}