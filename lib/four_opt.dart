import 'package:flutter/material.dart';

class MyFourOptions extends StatelessWidget {
  const MyFourOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 500, left: 100),
        child: Container(
          height: 160,
          width: 160,
          color:  const Color.fromARGB(255, 241, 241, 244),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 17, 2, 118),
                      radius: 15,
                      child: Center(
                        child: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      child:  Center(
                        child: Text("Move +1 day",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      height: 25,
                      width: 85,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 17, 2, 118),
                      radius: 15,
                      child: Center(
                        child: Icon(Icons.edit),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      child: const Center(
                        child: Text("Edit",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      height: 25,
                      width: 85,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 17, 2, 118),
                      radius: 15,
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      child: const Center(
                        child: Text("Recorder",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      height: 25,
                      width: 85,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 202, 4, 7),
                      radius: 15,
                      child: Center(
                        child: Icon(Icons.cancel),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      child: const Center(
                        child: Text("Delete",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      height: 25,
                      width: 85,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 238, 221, 221).withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
