import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: screenSize.height/2.2,
              width: screenSize.width,
                child:Image.asset("assets/images/space_station.png")
            ),
            Container(
              //height: 100,
              //width: 200,
                child:Image.asset("assets/images/destinations.png")
            ),
            Container(
              //height: 100,
              //width: 200,
                child:Image.asset("assets/images/Whether_reach.png")
            ),
            SizedBox(height: 10,),
            Container(
              //height: 100,
              //width: 200,
                child:Image.asset("assets/images/group2.png")
            ),
          ],
        ),
      ),
    );
  }
}
