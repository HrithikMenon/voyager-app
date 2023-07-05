import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voyager_app/constants/constants.dart';
import 'package:voyager_app/controllers/mainscreen_controller.dart';

class ScrollScreen extends StatelessWidget {
  ScrollScreen({super.key});

  ScrollController sc = ScrollController();
  TextEditingController goalController = TextEditingController();
  TextEditingController deadlineController = TextEditingController();
  TextEditingController planController = TextEditingController();
  TextEditingController whyDoThisController = TextEditingController();
  MainScreenController mainScreenController = Get.put(MainScreenController());

  TextStyle cc = TextStyle(
      color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Obx(() => Text(
                  mainScreenController.headingText.value,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                )),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: backgroundColor,
        body: GetBuilder<MainScreenController>(
            init: MainScreenController(),
            builder: (controller) {
              controller.onInit();
              return ListView(
                controller: sc,
                children: [
                  sh20, //
                  sh20,
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            mainScreenController.switchHeadingText('what');
                            sc.animateTo(
                              3000, // The position you want to scroll to
                              duration: const Duration(
                                  milliseconds:
                                      5000), // Duration of the animation
                              curve: Curves
                                  .easeInOut, // The easing curve for the animation
                            );
                          },
                          child: Obx(() => Text('WHAT',
                              style: mainScreenController.whatStyle.value)),
                        ),
                        GestureDetector(
                            onTap: () {
                              mainScreenController.switchHeadingText('when');
                            },
                            child: Obx(() => Text('WHEN',
                                style: mainScreenController.whenStyle.value))),
                        GestureDetector(
                          onTap: () {
                            mainScreenController.switchHeadingText('how');
                          },
                          child: Obx(() => Text(
                                'HOW',
                                style: mainScreenController.howStyle.value,
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            mainScreenController.switchHeadingText('why');
                            mainScreenController.scrollToElement(context);
                          },
                          child: Obx(() => Text('WHY',
                              style: mainScreenController.whyStyle.value)),
                        )
                      ],
                    ),
                  ),
                  sh20,
                  WhatWid(goalController: goalController, scrollController: sc),
                  const SizedBox(
                    height: 20,
                  ),
                  WhenWid(deadlineController: deadlineController),
                  sh20,
                  HowWid(planController: planController),
                  sh20,
                  WhyWid(whyDoThisController: whyDoThisController)
                ],
              );
            })
//       body: Center(
//         child: SingleChildScrollView(
//           controller: sc,
//           child: Column(
//             children: [
//               const Text('Part 1'),
//               MaterialButton(
//   onPressed: () {
//     sc.animateTo(
//       3000, // The position you want to scroll to
//       duration: const Duration(milliseconds: 500), // Duration of the animation
//       curve: Curves.easeInOut, // The easing curve for the animation
//     );
//   },
//   child: const Text('Scroll to Section'),

// ),const SizedBox(height: 2000,), const Text('Part 2'),
//             ],
//           ),
//         ),
//       ),
        );
  }
}

class WhyWid extends StatelessWidget {
  const WhyWid({
    super.key,
    required this.whyDoThisController,
  });

  final TextEditingController whyDoThisController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                //  onSubmitted: (val) => tcfun(),
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
                )),
            sh20
          ],
        ),
      ),
    );
  }
}

class HowWid extends StatelessWidget {
  const HowWid({
    super.key,
    required this.planController,
  });

  final TextEditingController planController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                //  onSubmitted: (val)=> tcfun(),
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
                            '➗',
                            style: TextStyle(height: 1.5),
                          ),
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
                          Text(
                            '🔍',
                            style: TextStyle(height: 1.5),
                          ),
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
    );
  }
}

class WhenWid extends StatelessWidget {
  WhenWid({
    super.key,
    required this.deadlineController,
  });

  final TextEditingController deadlineController;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
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
                ),
                onTap: () {
                  //textFieldOnTapFuncion(context);
                },
                //  onSubmitted: (val)=> tcfun(),
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
                        //gtu
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
                            '⏰',
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
                            '🤔',
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
                ))
          ],
        ),
      ),
    );
  }
}

class WhatWid extends StatelessWidget {
  WhatWid(
      {super.key,
      required this.goalController,
      required this.scrollController});

  final TextEditingController goalController;
  ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  ),
                  onSubmitted: (val) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScrollScreen()));
                    // tcfun();
                  }),
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
                          Text(
                            '🧭',
                            style: TextStyle(height: 1.5),
                          ),
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
                          Text(
                            '💡',
                            style: TextStyle(height: 1.5),
                          ),
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
                                    color: Color.fromARGB(255, 145, 139, 139),
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
                      ),

                      //const Text('Be specific here. Vague destinations are hard to reach. Examples of vague goals: Get fit, Get rich. Better goals would be: Lose 5kg, Make my first \$1000 selling t-shirts online.', maxLines: 5, overflow: TextOverflow.ellipsis, style: TextStyle(color: Color.fromARGB(255, 145, 139, 139),height: 1.6, fontWeight: FontWeight.w500),),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
