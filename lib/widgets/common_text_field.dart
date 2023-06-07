import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
   const CommonTextField({
    super.key,
    required this.goalController,
   
  });

  final TextEditingController goalController;


  @override
  Widget build(BuildContext context) {
    return Container(
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
      ),
    );
  }
}
