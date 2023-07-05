import 'package:flutter/material.dart';
import 'package:voyager_app/constants/constants.dart';

class HowPage extends StatelessWidget {
   HowPage({super.key, required this.tc});

   TabController tc;

  TextEditingController planController = TextEditingController();


    tcfun(){
   listToAddToHive.add({
    'How' : planController.text
   });
   tc.animateTo(3);

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
        controller: planController,
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
        ), 
        onSubmitted: (val)=> tcfun(),
      ), 
    ),
               // CommonTextField(goalController: planController, onSubmitFunction: (){}),
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
                      child:  Column(
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
                              Text('➗', style: TextStyle(height: 1.5),),
                              sw10,
                              Flexible(
                                  child: Text(
                                'Divide and conquer. Split that big hairy goal into smaller steps to make it less intimidating. We call these major steps milestones.',
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
                              Text('🔍',  style: TextStyle(height: 1.5),),
                              sw10,
                              Flexible(
                                  child: Text(
                                'More first steps usually begin with research. Eg: Research nearby gyms, Research succesful shops that sell products in my niche, etc.',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 145, 139, 139),
                                    height: 1.6,
                                    fontWeight: FontWeight.w500),
                              )),
                            ],
                          ),
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