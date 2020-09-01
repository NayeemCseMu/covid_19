import 'package:covid19/constatnts.dart';
import 'package:covid19/home/sections/header.dart';
import 'package:covid19/info_screen/prevent_card.dart';
import 'package:covid19/info_screen/symptom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyHeader(
              size: size,
              topText: 'Get to konw',
              bottomText: 'about Covid-19!',
              image: 'assets/images/coronadr.svg',
              press: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Symptoms',
                    style: kTitleTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SymptomCard(
                          image: 'assets/images/headache.png',
                          title: 'Headache',
                          isActive: false,
                        ),
                        SymptomCard(
                          image: 'assets/images/caugh.png',
                          title: 'Caugh',
                          isActive: true,
                        ),
                        SymptomCard(
                          image: 'assets/images/fever.png',
                          title: 'Fever',

                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Prevention',
                    style: kTitleTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PreventCard(
                    size: size,
                    image: 'assets/images/wear_mask.png',
                    title: 'Wear face mask',
                    description: 'Since the start of the coronavirus outbreak '
                        'some places have fully embraced wearing facemasks',
                  ),
                  PreventCard(
                    size: size,
                    image: 'assets/images/wash_hands.png',
                    title: 'Wash your hands',
                    description: 'Since the start of the coronavirus outbreak '
                        'some places have fully embraced wearing facemasks',
                  ),
                  SizedBox(height: kDefaultPadding),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




