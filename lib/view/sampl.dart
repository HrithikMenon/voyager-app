import 'package:flutter/material.dart';

class Sampl extends StatelessWidget {
  Sampl({super.key});

  TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 150,
        //   title: Row(
        //     children: [
        //       const Text('My App'),
        //       const SizedBox(
        //           width: 10), // Optional spacing between text and TabBar
        //       Expanded(
        //         child: TabBar(
        //           unselectedLabelColor: Colors.pink,
        //           unselectedLabelStyle: GoogleFonts.montserrat(
        //               fontSize: 10, fontWeight: FontWeight.bold),
        //           dividerColor: Colors.pink,
        //           indicator: BoxDecoration(
        //               color: Colors.pink,
        //               borderRadius: BorderRadius.circular(50)),
        //           labelStyle: GoogleFonts.montserrat(
        //             fontSize: 11,
        //             fontWeight: FontWeight.bold,
        //           ),
        //           controller: _tabController,
        //           tabs: const [
        //             Tab(text: 'Tab 1'),
        //             Tab(text: 'Tab 2'),
        //             Tab(text: 'Tab 3'),
        //             Tab(text: 'Tab 2'),
        //             Tab(text: 'Tab 3'),
        //             Tab(text: 'Tab 2'),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // body: TabBarView(controller: _tabController, children: const [
        //   Text('Monday'),
        //   Text('Tuesday'),
        //   Text('Wednesday'),
        //   Text('Thursday'),
        //   Text('Friday'),
        //   Text('Saturday'),
        //]
        //)
        );
  }
}
