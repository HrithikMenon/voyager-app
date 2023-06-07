import 'package:flutter/material.dart';

class GoalScreen1 extends StatelessWidget {
  const GoalScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
              // Column(
              // children: [
              Container(
        height: 720,
        width: 600,
        color:  const Color.fromARGB(255, 241, 236, 223),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                              color: Color.fromARGB(255, 142, 53, 39),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                              )),
                        ),
                        Container(
                          height: 100,
                          width: 200,
                          decoration: const BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10))),
                          child: const Center(
                            child:
                                Text("Increase affiliate\nrevenue of Homesly"),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 350,
                width: 300,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 246, 242, 242),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30, right: 120),
                      child: Text(
                        "Nov 28, Wed",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 30),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.add),
                          hintText: 'Add an action, entry or habit',
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
          // ],
          //),
          ),
    );
  }
}
