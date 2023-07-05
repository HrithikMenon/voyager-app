import 'package:flutter/material.dart';
import 'package:voyager_app/constants/constants.dart';
import 'package:voyager_app/goals/a_temp_file_to_display_hivevalues.dart';
import 'package:voyager_app/view/scrollscreen.dart';

class WhatPage extends StatelessWidget {
  WhatPage({super.key, required this.tc});

  TextEditingController goalController = TextEditingController();
  TabController tc;
  // var box = Hive.box('myBox');



  
   
  tcfun(){
    listToAddToHive.add({
      'What': goalController.text
    });
   //box.put('name', 'abin john');
//  final box = Hive.box<Map<String,String>>('myBox');
//  box.put('1', {'what' : goalController.text});
//   log('hwg: ${box.get('1')!['name']}');
   tc.animateTo(1);

  }

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 25, left: 25),
            child: Column(
              children: [
                Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white, width: 2)),
      width: MediaQuery.of(context).size.width,
      child: TextField(
        controller: goalController,
        decoration: const InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none,
          hintText: 'Enter here',
          hintStyle:
              TextStyle(color: Color.fromARGB(255, 168, 166, 166)),
          icon: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              '🎯',
            ),
          ),
        ), onSubmitted: 
        (val){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ScrollScreen()));
          tcfun();
        } 
      ),
    ),
              //  CommonTextField(goalController: goalController,onSubmitFunction: ()=>tcfun ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: backgroundColor, width: 2)),
                    width: MediaQuery.of(context).size.width,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Tips',
                            style: TextStyle(
                                // GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                          sh20,
                              Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              // Image.asset(
                              //   'assets/images/compas.png',
                              //   width: 25,
                              //   height: 25,
                              // ),
                              Text('🧭',  style: TextStyle(height: 1.5),),
                              sw10,
                              Flexible(
                                  child: Text(
                                'Be specific here. Vague destinations are hard to reach. Examples of vague goals: Get fit, Get rich. Better goals would be: Lose 5kg, Make my first \$1000 selling t-shirts online.',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 145, 139, 139),
                                    height: 1.6,
                                    fontWeight: FontWeight.w500),
                              )),
                            ],
                          ),
                          sh20,
                          sh10,

                              Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                            Text('💡', style: TextStyle(height: 1.5),),
                              sw10,
                              Flexible(
                                  child: Text(
                                'Tap the goal\'s emoji to change it!',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 145, 139, 139),
                                    height: 1.6,
                                    fontWeight: FontWeight.w500),
                              )),
                            ],
                          ),
                          sh20,
                          sh10,

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/open-book.png',
                                width: 25,
                                height: 25,
                              ),
                              sw10,
                              Flexible(
                                  child: RichText(
                                text: const TextSpan(
                                    text: 'Need more help? ',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 145, 139, 139),
                                        height: 1.6,
                                        fontWeight: FontWeight.w500),
                                    children: [
                                      TextSpan(
                                          text: 'Read this.',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              height: 1.6,
                                              fontWeight: FontWeight.w500)),
                                    ]),
                              ))
                              //Text('Need more help? Read this.', style: TextStyle(color: Color.fromARGB(255, 145, 139, 139),height: 1.6, fontWeight: FontWeight.w500),)
                            ],
                          ),MaterialButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ATempFile()));
                          }, child: const Text('OK'),)

                          //const Text('Be specific here. Vague destinations are hard to reach. Examples of vague goals: Get fit, Get rich. Better goals would be: Lose 5kg, Make my first \$1000 selling t-shirts online.', maxLines: 5, overflow: TextOverflow.ellipsis, style: TextStyle(color: Color.fromARGB(255, 145, 139, 139),height: 1.6, fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}

