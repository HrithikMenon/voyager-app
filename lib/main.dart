import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:voyager_app/goal_screen1.dart';
import 'package:voyager_app/view/signup_page.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Voyager',
      theme: ThemeData(fontFamily: 'sf-contact'),
      home:  const SignUpPage(),
      //AddYourGoal(),
      // const MyHomePage(),
      //MyStackPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    // TopBar()
                    const GoalScreen1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 165),
                child: Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.black,
                    child: const Text(
                      "W E L C O M E",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    )),
              ),
              Container(
                  //height: 100,
                  //width: 200,
                  child: Image.asset("assets/images/voager1.png"))
            ],
          ),
        ));
  }
}
