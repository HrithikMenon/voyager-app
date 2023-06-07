import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  static const String _title = 'Voyager';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late String a = "Add your goal";

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 4,
        child:Scaffold(
          backgroundColor: Color(0xFFF0F8FF),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Color(0xFFF0F8FF),
                title: Container(
                  margin: EdgeInsets.only(left: screenSize.width/30),
                  alignment: Alignment.topLeft,
                    child: Text(a,style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: screenSize.width/25
                    ),)),
                pinned: true,
                floating: true,
                bottom:  TabBar(
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 0,),
                    insets: EdgeInsets.symmetric(horizontal: screenSize.width/25)
                  ),
                  labelPadding: EdgeInsets.only(left: screenSize.width/15,right: screenSize.width/15),
                  indicatorPadding: EdgeInsets.all(screenSize.width/45),
                  isScrollable: true,
                  indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black,
                  //automaticIndicatorColorAdjustment: true,
                  onTap: (int index) {
                    print('Tab $index is tapped');
                    if (index ==0){
                      setState(() {
                        a = "Add your goal";
                      });
                    }
                    if (index ==1){
                      setState(() {
                        a = "Add a deadline";
                      });
                    }
                    if (index ==2){
                      setState(() {
                        a = "Your plan";
                      });
                    }
                    if (index ==3){
                      setState(() {
                        a = "Why do this";
                      });
                    }
                  },

                  tabs: [

                      Tab(
                          child: Text('WHAT',style: TextStyle(),)),
                      Tab(child: Text('WHEN',style: TextStyle(),)),
                      Tab(child: Text('HOW',style: TextStyle(),)),
                      Tab(
                          child: Text('WHY',style: TextStyle(),)),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Container(
                  child: Container(
                    child: Column(
                      children: [

                        SizedBox(height: screenSize.width/25,),
                        Container(
                            height: screenSize.width/10,
                            margin: EdgeInsets.symmetric(horizontal: screenSize.width/10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(screenSize.width/35)
                            ),

                            child: Center(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter here",
                                    contentPadding: EdgeInsets.all(screenSize.width/25),
                                    border: InputBorder.none,
                                    prefixIcon: Image.asset("assets/images/archer.png")
                                ),

                              ),
                            )
                        ),
                        SizedBox(height: screenSize.width/20,),
                        Container(
                          width: screenSize.width*0.8,
                          height: screenSize.height/1.5,
                          margin: EdgeInsets.symmetric(horizontal: screenSize.width/20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(screenSize.width/35)
                          ),
                          child: Column(
                            children:  [
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(
                                    left: screenSize.width/30,
                                    top: screenSize.width/30),
                                child: Text(
                                  "Tips",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: screenSize.width*1/30,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: screenSize.width/30,
                                            top: screenSize.width/30
                                        ),
                                        alignment: Alignment.topCenter,
                                        width: screenSize.width/16,
                                        child:
                                        Image.asset("assets/images/compas.png")),
                                    Container(
                                      padding: EdgeInsets.all(screenSize.width/25),
                                      child: Text(
                                        "Be specifi here. Vague destinations\n"
                                            "hard to reach.Examples of vague\n"
                                            "goals: Get fit,Get rich.Better goals\n"
                                            "would be:Lose 5kg,Make first\n"
                                            "1000 selling t-shirts online",style:
                                      TextStyle(
                                          fontSize: screenSize.width/30
                                      ),
                                      ),

                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: screenSize.width/25,),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: screenSize.width/30,
                                            top: screenSize.width/30
                                        ),
                                        alignment: Alignment.topCenter,
                                        width: screenSize.width/16,
                                        child:
                                        Image.asset("assets/images/bulb.png")),
                                    Container(
                                      padding: EdgeInsets.all(screenSize.width/25),
                                      child: Text(
                                        "Tap the goal's emoji to change it!",style:
                                      TextStyle(
                                          fontSize: screenSize.width/30
                                      ),
                                      ),

                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: screenSize.width/50,),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: screenSize.width/30,
                                            top: screenSize.width/30
                                        ),
                                        alignment: Alignment.topCenter,
                                        width: screenSize.width/16,
                                        child:
                                        Image.asset("assets/images/book.png")),
                                    Container(
                                      padding: EdgeInsets.all(screenSize.width/25),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Need more help?",style:
                                          TextStyle(
                                              fontSize: screenSize.width/30
                                          ),
                                          ),
                                          Text(
                                            "Read this!.",style:
                                          TextStyle(
                                              fontSize: screenSize.width/30,
                                              color: Colors.blue
                                          ),
                                          ),
                                        ],
                                      ),

                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: screenSize.width/25,),
                      Container(
                          height: screenSize.width/10,
                          margin: EdgeInsets.symmetric(horizontal: screenSize.width/10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(screenSize.width/35)
                          ),

                          child: Center(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: DateTime.now().day.toString()
                                      +" "+DateTime.now().month.toString()
                                      +" "+DateTime.now().year.toString(),
                                  contentPadding: EdgeInsets.all(screenSize.width/25),
                                  border: InputBorder.none
                              ),

                            ),
                          )
                      ),
                      SizedBox(height: screenSize.width/15,),
                      Container(
                        width: screenSize.width*0.8,
                        height: screenSize.height/1.5,
                        margin: EdgeInsets.symmetric(horizontal: screenSize.width/10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children:  [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(
                                  left: screenSize.width/30,
                                  top: screenSize.width/30),
                              child: Text(
                                "Tips",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenSize.width*1/30,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: screenSize.width/30,
                                          top: screenSize.width/30
                                      ),
                                      alignment: Alignment.topCenter,
                                      width: screenSize.width/16,
                                      child:
                                      Image.asset("assets/images/timer.png")),
                                  Container(
                                    padding: EdgeInsets.all(screenSize.width/25),
                                    child: Text(
                                      "Deadlines keep you accountable and\n"
                                          "bring about an urgency to your\n"
                                          "desires\n",style:
                                    TextStyle(
                                        fontSize: screenSize.width/30
                                    ),
                                    ),

                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: screenSize.width/25,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: screenSize.width/30,
                                          top: screenSize.width/30
                                      ),
                                      alignment: Alignment.topCenter,
                                      width: screenSize.width/16,
                                      child:
                                      Image.asset("assets/images/think.png")),
                                  Container(
                                    padding: EdgeInsets.all(screenSize.width/25),
                                    child: Text(
                                      "Finding it hard to set a date?Don't\n"
                                          "worry, guess estimate now and you\n"
                                          "can always change it later after you\n"
                                          "get a better handle of the work\n"
                                          "invoved"
                                          "",style:
                                    TextStyle(
                                        fontSize: screenSize.width/30
                                    ),
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(child:
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: screenSize.width/25,),
                      Container(
                          height: screenSize.width/10,
                          margin: EdgeInsets.symmetric(horizontal: screenSize.width/10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(screenSize.width/35)
                          ),

                          child: Center(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "What is the first major step?",
                                  contentPadding: EdgeInsets.all(screenSize.width/25),
                                  border: InputBorder.none,
                                  prefixIcon: Container(
                                    width: screenSize.width/25,
                                      child: Image.asset("assets/images/refresh1.png"))
                              ),

                            ),
                          )
                      ),
                      SizedBox(height: screenSize.width/15,),
                      Container(
                        width: screenSize.width*0.8,
                        height: screenSize.height/1.8,
                        margin: EdgeInsets.symmetric(horizontal: screenSize.width/10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children:  [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(
                                  left: screenSize.width/30,
                                  top: screenSize.width/30),
                              child: Text(
                                "Tips",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenSize.width*1/30,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: screenSize.width/30,
                                          top: screenSize.width/30
                                      ),
                                      alignment: Alignment.topCenter,
                                      width: screenSize.width/25,
                                      child:
                                      Image.asset("assets/images/pluus1.png")),
                                  Container(
                                    padding: EdgeInsets.all(screenSize.width/25),
                                    child: Text(
                                      "Divide and conquer.Split that big\n"
                                          "hairy goal into smaller smaller\n"
                                          "steps it less intimidating\n"
                                          "We call these major steps as \n"
                                          "milestones",style:
                                    TextStyle(
                                        fontSize: screenSize.width/30
                                    ),
                                    ),

                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: screenSize.width/25,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: screenSize.width/30,
                                          top: screenSize.width/30
                                      ),
                                      alignment: Alignment.topCenter,
                                      width: screenSize.width/16,
                                      child:
                                      Container(
                                        width: screenSize.width/25,
                                          child: Image.asset("assets/images/serach.png"))),
                                  Container(
                                    padding: EdgeInsets.all(screenSize.width/25),
                                    child: Text(
                                      "Most first step,usually begin with\n"
                                          "research.Eg:Research nearby gyms,\n"
                                          "Research successful shps that sell\n"
                                          "products in my niche"
                                          ,style:
                                    TextStyle(
                                        fontSize: screenSize.width/30
                                    ),
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ),
                      SizedBox(height: screenSize.width/15,),
                      Container(
                          height: screenSize.width/10,
                          margin: EdgeInsets.symmetric(horizontal: screenSize.width/10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(screenSize.width/35)
                          ),

                          child: Center(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Research successful stores",
                                  contentPadding: EdgeInsets.all(screenSize.width/25),
                                  border: InputBorder.none,
                                  prefixIcon: Container(
                                      width: screenSize.width/25,
                                      child: Image.asset("assets/images/refresh1.png"))
                              ),

                            ),
                          )
                      ),
                      SizedBox(height: screenSize.width/15,),
                      Container(
                        width: screenSize.width*0.8,
                        height: screenSize.height/1.8,
                        margin: EdgeInsets.symmetric(horizontal: screenSize.width/10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children:  [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(
                                  left: screenSize.width/30,
                                  top: screenSize.width/30),
                              child: Text(
                                "Tips",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenSize.width*1/30,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: screenSize.width/30,
                                          top: screenSize.width/30
                                      ),
                                      alignment: Alignment.topCenter,
                                      width: screenSize.width/25,
                                      child:
                                      Image.asset("assets/images/pluus1.png")),
                                  Container(
                                    padding: EdgeInsets.all(screenSize.width/25),
                                    child: Text(
                                      "Divide and conquer.Split that big\n"
                                          "hairy goal into smaller smaller\n"
                                          "steps it less intimidating\n"
                                          "We call these major steps as \n"
                                          "milestones",style:
                                    TextStyle(
                                        fontSize: screenSize.width/30
                                    ),
                                    ),

                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: screenSize.width/25,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: screenSize.width/30,
                                          top: screenSize.width/30
                                      ),
                                      alignment: Alignment.topCenter,
                                      width: screenSize.width/16,
                                      child:
                                      Container(
                                          width: screenSize.width/25,
                                          child: Image.asset("assets/images/serach.png"))),
                                  Container(
                                    padding: EdgeInsets.all(screenSize.width/25),
                                    child: Text(
                                      "Most first step,usually begin with\n"
                                          "research.Eg:Research nearby gyms,\n"
                                          "Research successful shps that sell\n"
                                          "products in my niche"
                                      ,style:
                                    TextStyle(
                                        fontSize: screenSize.width/30
                                    ),
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top:
                          screenSize.width/20, right:
                          screenSize.width/10,bottom:
                          screenSize.width/20),
                          alignment: Alignment.centerRight,
                          child:Text("Add more milestones")
                      ),
                      Container(
                          height: screenSize.width/10,
                          margin: EdgeInsets.symmetric(horizontal: screenSize.width/10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(screenSize.width/35)
                          ),

                          child: Center(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Read 5 pages before I sleep",
                                  contentPadding: EdgeInsets.all(screenSize.width/25),
                                  border: InputBorder.none,
                                  prefixIcon: Container(
                                      width: screenSize.width/25,
                                      child: Image.asset("assets/images/refresh1.png"))
                              ),

                            ),
                          )
                      ),
                      SizedBox(height: screenSize.width/25,),
                      Container(
                        width: screenSize.width*0.8,
                        //height: screenSize.height/1.5,
                        margin: EdgeInsets.symmetric(horizontal: screenSize.width/20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(screenSize.width/35)
                        ),
                        child: Column(
                          children:  [
                            SizedBox(height: screenSize.width/25,),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.all(
                                               screenSize.width/20,
                                          ),
                                          alignment: Alignment.topCenter,
                                          child:
                                          Text("Start Date")),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: EdgeInsets.all(screenSize.width/20),
                                        child: Text("Today"+" "+
                                            DateTime.now().day.toString()+" "+
                                            DateTime.now().month.toString()
                                        ),
                                      )

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.all(
                                            screenSize.width/20,
                                          ),
                                          alignment: Alignment.topCenter,
                                          child:
                                          Text("Repeat")),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: EdgeInsets.all(screenSize.width/20),
                                        child: Text("Everyday"
                                        ),
                                      )

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.all(
                                            screenSize.width/20,
                                          ),
                                          alignment: Alignment.topCenter,
                                          child:
                                          Text("Time")),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: EdgeInsets.all(screenSize.width/20),
                                        child: Text("Not specified"
                                        ),
                                      )

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: screenSize.width/25,),

                          ],
                        ),

                      ),
                      SizedBox(height: screenSize.width/25,),
                    ],
                  ),
                ),
                )
              ),
            ],
          ),
        )
        )
    );
  }
}

