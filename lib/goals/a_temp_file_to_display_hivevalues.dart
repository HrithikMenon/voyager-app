import 'dart:developer';

import 'package:flutter/material.dart';

class ATempFile extends StatefulWidget {
  const ATempFile({super.key});

  @override
  State<ATempFile> createState() => _ATempFileState();
}

class _ATempFileState extends State<ATempFile> {
  Color g = Colors.purpleAccent;

  List<String>weekdays = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];

  int getTotalDaysInMonth(int year, int month) {
    // Create a DateTime object for the first day of the next month
    DateTime firstDayOfNextMonth = DateTime(year, month + 1, 1);

    // Subtract one day from the first day of the next month
    // to get the last day of the current month
    DateTime lastDayOfCurrentMonth =
        firstDayOfNextMonth.subtract(const Duration(days: 1));

    // Return the day component of the last day of the month
    return lastDayOfCurrentMonth.day;
  }

  int? totalDays;
  int? februaryDays;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    int januaryDays = getTotalDaysInMonth(2023, 1);
    int februaryDays = getTotalDaysInMonth(2016, 2);
    int marchDays = getTotalDaysInMonth(2023, 3);
    int aprilDays = getTotalDaysInMonth(2023, 4);
    int mayDays = getTotalDaysInMonth(2023, 5);
    int juneDays = getTotalDaysInMonth(2023, 6);
    int julyDays = getTotalDaysInMonth(2023, 7);
    int augustDays = getTotalDaysInMonth(2023, 8);
    int septemberDays = getTotalDaysInMonth(2023, 9);
    int octoberDays = getTotalDaysInMonth(2023, 10);
    int novemberDays = getTotalDaysInMonth(2023, 11);
    int decemberDays = getTotalDaysInMonth(2023, 12);

    totalDays = januaryDays +
        februaryDays +
        marchDays +
        aprilDays +
        mayDays +
        juneDays +
        julyDays +
        augustDays +
        septemberDays +
        octoberDays +
        novemberDays +
        decemberDays;
    log('Total Days: $totalDays');
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 236, 236),
          body: Column(
            children: [
              Expanded(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 14, mainAxisSpacing: 2, crossAxisSpacing: 1, childAspectRatio: 1),
                    padding: const EdgeInsets.all(20),
                    itemCount: februaryDays,
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        g = const Color.fromARGB(255, 237, 183, 247);
                      } else {
                        g = Colors.purpleAccent;
                      }
                      return CircleAvatar(radius: 5, backgroundColor: g);
                    }),
              ),
               
              
            ],
          )
          // body: Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Container(
          //     decoration:  BoxDecoration(borderRadius: BorderRadius.circular(20)),
          //     height: 500,
          //     child: Card(
          //       color: Colors.white,
          //       child: Column(
          //         children: [
          //           Expanded(
          //             child: GridView.builder(
          //                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //                       crossAxisCount: 7, mainAxisSpacing: 5, crossAxisSpacing: 5, childAspectRatio: 1,),
          //                   padding: const EdgeInsets.all(10),
          //                   itemCount: 7,
          //                   itemBuilder: (context, index) {
                             
          //                     return  CircleAvatar(radius: 5, backgroundColor: const Color.fromARGB(255, 245, 241, 241), child: Text(weekdays[index]),);
                          
          //                   },
                          
          //               ),
          //           ),
          //           Expanded(
          //             child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //               crossAxisCount: 7, mainAxisSpacing: 5, crossAxisSpacing: 5, childAspectRatio: 1
          //             ), itemBuilder: ((context, index) {
          //               return CircleAvatar(
          //                 radius: 5, 
          //                 backgroundColor: const Color.fromARGB(255, 245, 241, 241),
          //                 child: Text(index.toString()),
          //               );
          //             }), 
          //             itemCount: 10,  padding: const EdgeInsets.all(10),),
                    
                      
          //           ),  
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          ),// 
    );
  }
}
