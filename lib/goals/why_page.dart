import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:voyager_app/constants/constants.dart';
import 'package:voyager_app/models/hive_models/goal_model.dart';

class WhyPage extends StatefulWidget {
  WhyPage({super.key, required this.tc});

  TabController? tc;

  @override
  State<WhyPage> createState() => _WhyPageState();
}

class _WhyPageState extends State<WhyPage> {
  TextEditingController whyDoThisController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  String dateSelected = '';
  String what = '';
  String when = '';
  String how = '';
  String why = '';
  Box? goalBox;

 addValuesToHive() async{
    goalBox = Hive.box<GoalModel>('goalBox');
  for (var data in listToAddToHive) {
  data.forEach((key, value) {
    if (key == 'What') {
       what = value;
    } else if (key == 'When') {
       when = value;
    } else if (key == 'How') {
       how = value;
    } else if (key == 'Why') {
       why = value;
    } 
  });


  }  GoalModel model = GoalModel(what: what, when: when, how: how, why: why);
    log('model :${model.what}');

   

     await goalBox!.add(model);

    final k =  goalBox!.getAt(0);

    log('h:$k');
    
  }

  tcfun() {
    listToAddToHive.add({'Why': whyDoThisController.text});
  //  widget.tc!.animateTo(0);
    log(listToAddToHive.toString());
    addValuesToHive();
  }

  Future<void> _selectDate(BuildContext context) async {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => Container(
            height: 190,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  child: CupertinoDatePicker(
                      initialDateTime: DateTime.now(),
                      onDateTimeChanged: (val) {
                        setState(() {
                          dateSelected = val.toString();
                        });
                      }),
                ),
              ],
            )));
    // final DateTime? picked = await showDatePicker(
    //     context: context,
    //     initialDate: selectedDate,
    //     firstDate: DateTime(2015, 8),
    //     lastDate: DateTime(2101));
    // if (picked != null && picked != selectedDate) {
    //   setState(() {
    //     selectedDate = picked;
    //   });
    // }
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
                    controller: whyDoThisController,
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
                    onSubmitted: (val) => tcfun(),
                  ),
                ),
                //CommonTextField(goalController: whyDoThisController,onSubmitFunction: (){}),
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
                              Text(
                                '👑',
                                style: TextStyle(height: 1.5),
                              ),
                              sw10,
                              Flexible(
                                  child: Text(
                                'Deadlines keep you accountable and bring about an urgency to your desires.',
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
                              Text(
                                '✨',
                                style: TextStyle(height: 1.5),
                              ),
                              sw10,
                              Flexible(
                                  child: Text(
                                'Finding it hard to set a date? Don\'t worry, guess estimate now and you can always change it later after you get a better handle of the work involved.',
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
                    )), MaterialButton(onPressed: (){
                       log(goalBox!.getAt(8).what.toString());
                              
                            
                    }, child: const Text('OK'))
              ],
            ), 
          ),
        ));
  }
}
