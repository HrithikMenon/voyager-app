import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:voyager_app/constants/constants.dart';

class GoalScreenWithEmoji extends StatelessWidget {
  GoalScreenWithEmoji({super.key});

  Box? goalBox;
  List<String> actionsList = [];
  TextEditingController actionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 201, 160, 246),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                )),
                          ),
                          Container(
                            height: 100,
                            width: 200,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 139, 42, 243),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10))),
                            child: const Center(
                              child: Text(
                                //goalBox!.getAt(0)['what'].toString(),
                                "Increase affiliate\nrevenue of Homesly",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
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
                      child: const Center(
                        child: Text("21 FEB 2020"),
                      ),
                    ),
                  ],
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
                        padding:
                            const EdgeInsets.only(left: 20, right: 30, top: 10),
                        child: TextFormField(
                          controller: actionController,
                          onFieldSubmitted: (val) {
                            actionsList.add(val);
                          },
                          decoration: const InputDecoration(
                            icon: Icon(Icons.add),
                            hintText: 'Add an action, entry or habit',
                          ),
                        ),
                      ),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: actionsList.length,
                          itemBuilder: (builder, context) {
                            return const Text('data');
                          })
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

