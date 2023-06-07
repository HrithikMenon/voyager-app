import 'package:flutter/material.dart';
import 'package:voyager_app/constants/constants.dart';
import 'package:voyager_app/goals/how_page.dart';
import 'package:voyager_app/goals/what_page.dart';
import 'package:voyager_app/goals/when_page.dart';
import 'package:voyager_app/goals/why_page.dart';

class AddYourGoal extends StatefulWidget {
  const AddYourGoal({super.key});

  @override
  State<AddYourGoal> createState() => _AddYourGoalState();
}

class _AddYourGoalState extends State<AddYourGoal>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  String headingText = 'Add your goal';

   void handleTabChange(){
    if(_tabController!.indexIsChanging){
       if(_tabController!.index == 0){
        setState(() {
          headingText = 'Add your goal';
        });
      }
      if(_tabController!.index == 1){
        setState(() {
        headingText = 'Add a deadline';
      });
      }
      if(_tabController!.index == 2){
        setState(() {
          headingText = 'Your plan';
        });
      }
       if(_tabController!.index == 3){
        setState(() {
          headingText = 'Why do this';
        });
      }
      
    }
    }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    
    _tabController!.addListener(handleTabChange);
   
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          title:  Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, bottom: 12),
            child: Text(
              headingText,
             // 'Add your goal',
              style: const TextStyle(
              // GoogleFonts.montserrat(
                  fontSize: 20, fontWeight: FontWeight.w900, color: Colors.black),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
              padding: const EdgeInsets.only(right: 30, left: 30, bottom: 10),
              labelStyle:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              unselectedLabelStyle: const TextStyle(color: Colors.white10, fontWeight: FontWeight.w500),
              unselectedLabelColor: Colors.black.withOpacity(0.5),
              labelColor: Colors.blue,
              indicator: const BoxDecoration(
                color: Colors.transparent,
              ),
              controller: _tabController,
              tabs: const [
                Tab(text: 'WHAT'),
                Tab(
                  text: 'WHEN',
                ),
                Tab(
                  text: 'HOW',
                ),
                Tab(
                  text: 'WHY',
                ),
              ]),
        ),
        backgroundColor: backgroundColor,
        body: TabBarView(controller: _tabController, children:  [
          WhatPage(), 
           WhenPage(), 
           HowPage(), 
           const WhyPage()
        ]),
      ),
    );
  }
}
