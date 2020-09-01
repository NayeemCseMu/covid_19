import 'package:covid19/home/sections/counter.dart';
import 'package:covid19/home/sections/drop_down.dart';
import 'package:covid19/home/sections/header.dart';
import 'package:covid19/info_screen/info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constatnts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ScrollController();
  double offset = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  void onScroll(){
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width);
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: <Widget>[
            MyHeader(
                size: size,
                topText: 'All you need',
                bottomText: 'to stay at home!',
                image: 'assets/images/Drcorona.svg',
                offset: offset,
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>InfoScreen()));
                }
            ),
            DropDown(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(text: 'Case Update\n', style: kTitleTextStyle),
                      TextSpan(
                          text: 'Newest Update Ausgust\'20', style: kTextStyle),
                    ]),
                  ),
                  Text(
                    'See Details',
                    style: kTextBlueStyle,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white, boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 30,
                  color: kShadowColor,
                )
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Counter(
                    color: kPrimaryColor_Orange,
                    number: '1046',
                    title: 'Infected',
                  ),
                  Counter(
                    color: kDarkPrimaryColor_Red,
                    number: '87',
                    title: 'Death',
                  ),
                  Counter(
                    color: kPrimaryColor_Teal,
                    number: '280',
                    title: 'Recovered',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Sperad virus',
                    style: kTitleTextStyle,),
                  Text(
                    'See Details',
                    style: kTextBlueStyle,
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding,
                  vertical: kDefaultPadding/2),
              padding: EdgeInsets.all(kDefaultPadding/2),
              height: 178,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 30,
                      color: kShadowColor,
                    )
                  ]
              ),
              child: Image.asset('assets/images/map.png',
                fit: BoxFit.contain,),
            ),
          ],
        ),
      ),
    );
  }
}




