import 'package:flutter/material.dart';
import 'package:voyager_app/add_goal.dart';
import 'package:voyager_app/why_do_this.dart';
import 'package:voyager_app/your_plan.dart';


class AddDeadline extends StatefulWidget {
  const AddDeadline({Key? key}) : super(key: key);

  @override
  State<AddDeadline> createState() => _AddDeadlineState();
}

class _AddDeadlineState extends State<AddDeadline>  with TickerProviderStateMixin {
  late TabController _tabController;
  late String a = "";

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
            backgroundColor: const Color(0xFFF0F8FF),


            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    backgroundColor: const Color(0xFFF0F8FF),
                    title: Container(
                        margin: const EdgeInsets.only(left: 30),
                        alignment: Alignment.topLeft,
                        child: Text(_tabController.index.toString(),style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),)),
                    pinned: true,
                    floating: true,
                    bottom:  TabBar(
                      indicator: const UnderlineTabIndicator(
                          borderSide: BorderSide(width: 0,),
                          insets: EdgeInsets.symmetric(horizontal: 15)
                      ),
                      labelPadding: const EdgeInsets.only(left: 30,right: 30),
                      indicatorPadding: const EdgeInsets.all(10),
                      isScrollable: true,
                      indicatorColor: Colors.blue,
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.black,
                      //automaticIndicatorColorAdjustment: true,
                      tabs: [
                        InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  const AddGoal()),
                            );
                          },
                          child:
                            const Tab(
                            child: Text('WHAT',style: TextStyle(),))),
                            const Tab(
                                child: Text('WHEN',style: TextStyle(),)),
                        InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const YourPlan()),
                              );
                            },
                            child:
                            const Tab(
                                child: Text('HOW',style: TextStyle(),))),
                        InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const WhyDoThis()),
                              );
                            },
                            child:
                            const Tab(
                                child: Text('WHY',style: TextStyle(),))),
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

                            const SizedBox(height: 20,),
                            Container(
                                height: 50,
                                margin: const EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                ),

                                child: Center(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "${DateTime.now().day} ${DateTime.now().month} ${DateTime.now().year}",
                                        contentPadding: const EdgeInsets.all(20),
                                        border: InputBorder.none,
                                        prefixIcon: Image.asset("assets/images/archer.png")
                                    ),

                                  ),
                                )
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              width: screenSize.width*0.8,
                              height: screenSize.height/1.5,
                              margin: const EdgeInsets.symmetric(horizontal: 50),
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
                  ),
                ],
              ),
            )
        )
    );
  }
}

