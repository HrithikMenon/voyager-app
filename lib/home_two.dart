//import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class HomeTwo extends StatefulWidget {
  const HomeTwo({Key? key}) : super(key: key);

  @override
  State<HomeTwo> createState() => _HomeTwoState();
}

class _HomeTwoState extends State<HomeTwo> {
  int pageIndex = 0;
  String appBarTitle = "";

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xFFF0F8FF),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ?  ImageIcon(
                AssetImage("assets/images/Goals.png",),
                color: Colors.blue,
                size: 24,
              )
                  : ImageIcon(
                AssetImage("assets/images/Goals.png"),
                color: Colors.grey,
                size: 24,
              )
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ?
                    ImageIcon(
                AssetImage("assets/images/Calendar.png",),
                color: Colors.blue,
                  )
                  : ImageIcon(
                AssetImage("assets/images/Calendar.png"),
                color: Colors.grey,
                size: 100,
              )
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ?  ImageIcon(
                AssetImage("assets/images/Create.png"),
                color: Colors.blue,
                size: 70,
              )
                  : ImageIcon(
                AssetImage("assets/images/Create.png"),
                color: Colors.blue,
                size: 70,
              )
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ?  ImageIcon(
                AssetImage("assets/images/Reports.png"),
                color: Colors.blue,
                size: 24,
              )
                  : ImageIcon(
                AssetImage("assets/images/Reports.png"),
                color: Colors.grey,
                size: 24,

              )
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              icon: pageIndex == 4
                  ?  ImageIcon(
                AssetImage("assets/images/More.png"),
                color: Colors.blue,
                size: 24,
              )
                  : ImageIcon(
                AssetImage("assets/images/More.png"),
                color: Colors.grey,
                size: 24,
              )
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var parser = EmojiParser();
    var coffee = Emoji('coffee', '☕');
    var heart  = Emoji('heart', '❤️');

    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Color(0xFFF0F8FF),
      child: Container(
        margin: EdgeInsets.only(left: 0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top:screenSize.width/15,left: screenSize.width/20),
              child: Text(
                //parser.emojify('I :heart: :coffee:'),
                "My Goals",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: screenSize.width/30,),
            Container(

              margin: EdgeInsets.symmetric(horizontal: screenSize.width/20),
              width: screenSize.width/5+screenSize.width*0.6,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                children: [
                  Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFDEE3F3),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),),

                      width: screenSize.width/5,
                      height: 100,
                      child: Center(child: Image.asset("assets/images/home.png",height: 75,width: 75,)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0XFF647CD6),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10)),),
                      width: screenSize.width*0.6,
                      height: 100,

                      child: Center(
                        child: Text(
                          "chk;gkaslhchlishlh"
                        ),
                      ),
                    )
                  ],),
                  Row(
                    children: [],
                  )
                ],
              ),
            ),
            SizedBox(height: screenSize.width/30,),

            CarouselSlider(
              options: CarouselOptions(height: screenSize.width/2),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                        ),
                        child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                    );
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var parser = EmojiParser();
    var coffee = Emoji('coffee', '☕');
    var heart  = Emoji('heart', '❤️');

    return Container(
      color: Color(0xFFF0F8FF),
      child: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20,top: 20),
              child: Text(
                parser.emojify('I :heart: :coffee:'),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontFamily: ''
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                        ),
                        child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                    );
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF0F8FF),
      child: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20,top: 20),
              child: Text(
                "",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF0F8FF),
      child: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20,top: 20),
              child: Text(
                "Reports",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF0F8FF),
      child: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20,top: 20),
              child: Text(
                "More",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
