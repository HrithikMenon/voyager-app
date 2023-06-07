//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeOne extends StatefulWidget {
  const HomeOne({Key? key}) : super(key: key);


  @override
  State<HomeOne> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  String a = "";
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10,top: 10),
          alignment: Alignment.centerLeft,
  child: Text("",style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 10,
  ),)),
        Text(
          'Index 0: Home',
          style: optionStyle,
        ),
      ],
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
    Text(
      'Index 4: School',
      style: optionStyle,
    ),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        title: Text(a,style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: screenSize.width/20,
        ),)),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'jhvjhb',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'jhvjhb',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          print('Tab $index is tapped');
          if (index ==0){
            setState(() {
              a = "Add your goal";
            });
          }
          if (index ==1){
            setState(() {
              a = "Add a deadline";
            });
          }
          if (index ==2){
            setState(() {
              a = "Your plan";
            });
          }
          if (index ==3){
            setState(() {
              a = "Why do this";
            });
          }
          if (index ==3){
            setState(() {
              a = "Why do this";
            });
          }
        },
      ),
    );
  }
}
