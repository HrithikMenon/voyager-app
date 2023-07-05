import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:voyager_app/constants/constants.dart';

class WhenPage extends StatefulWidget {
   WhenPage({super.key, required this.tc});

  TabController? tc ;

  @override
  State<WhenPage> createState() => _WhenPageState();
}

class _WhenPageState extends State<WhenPage> {
  TextEditingController deadlineController = TextEditingController();

    tcfun(){
   listToAddToHive.add({
    'When' : deadlineController.text
   });
   widget.tc!.animateTo(2);

  }

  String formattedDate = '';

   textFieldOnTapFuncion(BuildContext context)async{
  //    void _showIOS_DatePicker(ctx) {
  //   showCupertinoModalPopup(
  //       context: ctx,
  //       builder: (_) => Container(
  //             height: 190,
  //             color: const Color.fromARGB(255, 255, 255, 255),
  //             child: Column(
  //               children: [
  //                 SizedBox(
  //                   height: 180,
  //                   child: CupertinoDatePicker(
  //                       initialDateTime: DateTime.now(),
  //                       onDateTimeChanged: (val) {
  //                         setState(() {
  //                           deadlineController.text = val.toString();
  //                         });
  //                       }),
  //                 ),
  //               ],
  //             ),
  //           ));
  // }
    DateTime? pickedDate = await showDatePicker(

                      context: context,
                       initialDate: DateTime.now(), //get today's date
                      firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101), 
                      
                  ); 

                  formattedDate= DateFormat.yMMMd().format(pickedDate!);
                  Duration dateDifference = DateTime.now().difference(pickedDate); 
                  
                  setState(() {
                    deadlineController.text = formattedDate;
                  });
                  
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
        controller: deadlineController,
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
        ), onTap: (){
          textFieldOnTapFuncion(context);
        },
        onSubmitted: (val)=> tcfun(),
      ), 
    ),
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
                              Text('⏰', style: TextStyle(height: 1.5),),
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
                             Text('🤔', style: TextStyle(height: 1.5),),
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
                    ))
              ],
            ),
          ),
        ));
  }
}
