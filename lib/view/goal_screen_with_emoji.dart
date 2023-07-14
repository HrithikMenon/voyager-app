import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:voyager_app/constants/constants.dart';
import 'package:voyager_app/models/hive_models/goal_model.dart';

class GoalScreenWithEmoji extends StatefulWidget {
  const GoalScreenWithEmoji({super.key});

  @override
  State<GoalScreenWithEmoji> createState() => _GoalScreenWithEmojiState();
}

class _GoalScreenWithEmojiState extends State<GoalScreenWithEmoji> {
  Box? goalBox;

  List<String> actionsList = [];

  TextEditingController actionController = TextEditingController();

  Box<GoalModel>? bbox;

  GoalModel? myData;

  @override
  void initState() {
    super.initState();
    gg();
  }

  Future<void> gg() async {
    bbox = await Hive.openBox<GoalModel>('goalBox');
    myData = bbox!.getAt(1);
    setState(() {}); // Trigger a rebuild after retrieving the data
  }

  @override
  Widget build(BuildContext context) {
    if (myData == null) {
      // Handle the case when data is not yet retrieved
      return const Scaffold(
        body: Center(
          child: Text('No Goals Added Yet!'),
        ),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: backgroundColor,
          body: SafeArea(
              child:
                  // Column(
                  // children: [
                  Container(
            height: 720,
            width: 500,
            color: const Color.fromARGB(255, 223, 218, 218),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "My Goals",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                 
                  SizedBox(
                    height: 150,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: bbox!.length,
                        physics: const NeverScrollableScrollPhysics(), 
                        shrinkWrap: true,
                        itemBuilder: (builder, context){
                        return Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 194, 208, 218),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                    )),
                              ), Container(
                                height: 100,
                                width: 200,
                                decoration: const BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10))),
                                child: Center(
                                  child:
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Text(bbox!.get(context)!.what, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                      ),
                                ),)
                                ],
                              ), 
                                Row(
                                      children: [
                                            Container(
                          height: 50,
                          width: 180,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(
                                  15,
                                ),
                              )),
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Container(
                                    height: 5,
                                    width: 140,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 2, 31, 80),
                                      borderRadius: BorderRadius.only(),
                                    ),
                                    child: const LinearProgressIndicator(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                                            ),
                                            Container(
                          height: 50,
                          width: 120,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10))),
                          child: Center(
                            child: Text(bbox!.get(context)!.when),
                          ),
                                            ),
                                      
                            ],
                          ),
                                ])),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Actions",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 370,
                    width: 300,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 246, 242, 242),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 20, right: 140),
                          child: Text(
                            "Nov 28, Wed",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 30, top: 10),
                          child: TextFormField(
                            controller: actionController,
                            onFieldSubmitted: (val) {
                              setState(() {
                                if (val != '') {
                                  actionsList.add(val);
                                  actionController.clear();
                                }
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.add),
                               border: InputBorder.none,
                              hintText: 'Add an action, entry or habit',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ListView.separated(
                              separatorBuilder: (builder, index) {
                                return const SizedBox(
                                  height: 10,
                                );
                              },
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: actionsList.length,
                              itemBuilder: (builder, index) {
                                return Row(
                                  children: [
                                    const CircleCheckbox(),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(actionsList[index]),
                                  ],
                                );
                              }),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
        ),
      );
    }
  }
  // return SafeArea(
  //   child: Scaffold(
  //     body: Padding(
  //       padding: const EdgeInsets.all(20.0),
  //       child: ListView(
  //         children: [
  //           const Text(
  //             'My Goals',
  //             style: TextStyle(
  //                 color: Colors.black,
  //                 fontWeight: FontWeight.w900,
  //                 fontSize: 20),
  //           ),
  //           sh20,
  //           Container(
  //             height: 200,
  //             width: MediaQuery.of(context).size.width,
  //             decoration:
  //                 BoxDecoration(borderRadius: BorderRadius.circular(15),
  //                 color: Colors.purpleAccent,),
  //             child: Column(
  //               children: [
  //                 Row(
  //                   children: [
  //                     Container(
  //                       color: Colors.yellow,
  //                       height: 150,

  //                     ),
  //                      Container(
  //                       color: Colors.yellow,
  //                       height: 150,

  //                     )
  //                   ],
  //                 ),
  //                 Container(
  //                   color: Colors.black,
  //                 )
  //               ],
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   ),
  // );

  // }
}


class CircleCheckbox extends StatefulWidget {
  const CircleCheckbox({super.key});

  @override
  _CircleCheckboxState createState() => _CircleCheckboxState();
}

class _CircleCheckboxState extends State<CircleCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 20.0,
        height: 20.0,
        decoration: BoxDecoration(
          color: isChecked ? Colors.blue : Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
        child: isChecked
            ? const Icon(
                Icons.check,
                color: Colors.white,
                size: 18,
              )
            : null,
      ),
    );
  }
}
