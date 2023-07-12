import 'package:flutter/material.dart';

class CompletedGoals extends StatelessWidget {
  const CompletedGoals({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.only(top: 55, left: 30),
                child: const Text(
                  "Completed Goals",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),   
                const SizedBox(height: 20,),
                ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 20,);
                  },
                  physics: const NeverScrollableScrollPhysics(), 
                  shrinkWrap: true,
                  itemCount: 3,itemBuilder: (builder, context){
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 142, 53, 39),
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
                          child: const Center(
                            child:
                                Text("Increase affiliate\nrevenue of Homesly"),
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
                    child: const Center(
                      child: Text("21 FEB 2020"),
                    ),
                  ),
                
                      ],
                    ),
          ]));
                })
                ]));
  }
}