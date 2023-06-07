import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TempHome extends StatelessWidget {
   TempHome({super.key});
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello, ${_auth.currentUser!.displayName}'),
      ),
    );  
  }
}