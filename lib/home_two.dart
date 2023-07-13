//import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
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
      
      backgroundColor: const Color(0xFFF0F8FF),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 90,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
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
                  ?  const ImageIcon(
                AssetImage("assets/images/Goals.png",),
                color: Colors.blue,
                size: 24,
              )
                  : const ImageIcon(
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
                    const ImageIcon(
                AssetImage("assets/images/Calendar.png",),
                color: Colors.blue,
                  )
                  : const ImageIcon(
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
                  ?  const ImageIcon(
                AssetImage("assets/images/Create.png"),
                color: Colors.blue,
                size: 70,
              )
                  : const ImageIcon(
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
                  ?  const ImageIcon(
                AssetImage("assets/images/Reports.png"),
                color: Colors.blue,
                size: 24,
              )
                  : const ImageIcon(
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
                  ?  const ImageIcon(
                AssetImage("assets/images/More.png"),
                color: Colors.blue,
                size: 24,
              )
                  : const ImageIcon(
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
      color: const Color(0xFFF0F8FF),
      child: Container(
        margin: const EdgeInsets.only(left: 0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top:screenSize.width/15,left: screenSize.width/20),
              child: const Text(
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
              decoration: const BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                children: [
                  Row(children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFDEE3F3),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),),

                      width: screenSize.width/5,
                      height: 100,
                      child: Center(child: Image.asset("assets/images/home.png",height: 75,width: 75,)),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0XFF647CD6),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10)),),
                      width: screenSize.width*0.6,
                      height: 100,

                      child: const Center(
                        child: Text(
                          "chk;gkaslhchlishlh"
                        ),
                      ),
                    )
                  ],),
                  Row(
                    children: const [],
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
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                        ),
                        child: Text('text $i', style: const TextStyle(fontSize: 16.0),)
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
      color: const Color(0xFFF0F8FF),
      child: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text(
                parser.emojify('I :heart: :coffee:'),
                style: const TextStyle(
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
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                        ),
                        child: Text('text $i', style: const TextStyle(fontSize: 16.0),)
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
      color: const Color(0xFFF0F8FF),
      child: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: const Text(
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
      color: const Color(0xFFF0F8FF),
      child: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: const Text(
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
      color: const Color(0xFFF0F8FF),
      child: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: const Text(
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
