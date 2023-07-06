import 'package:flutter/material.dart';
import 'package:voyager_app/constants/constants.dart';

class GoalScreenWithEmoji extends StatelessWidget {
  const GoalScreenWithEmoji({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              const Text(
                'My Goals',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
              sh20,
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15),
                    color: Colors.purpleAccent,),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          color: Colors.yellow, 
                          height: 150,
                          
                        ), 
                         Container(
                          color: Colors.yellow, 
                          height: 150,
                          
                        )
                      ],
                    ), 
                    Container(
                      color: Colors.black,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
