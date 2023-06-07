import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInTextField extends StatelessWidget {
   SignInTextField({
    super.key,
    required this.valueController,
    required this.hintText, 
    required this.width, 
    required this.obscure
  });

  final TextEditingController valueController;
  String hintText;
  double width;
  bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.05),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.withOpacity(0.05), width: 2)),
      width: width,
      height: 50,
      child: TextField(
        controller: valueController,
        obscureText: obscure,
        decoration:  InputDecoration(
          fillColor: Colors.grey.withOpacity(0.05),
          filled: true,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle:
                GoogleFonts.montserrat(color: const Color.fromARGB(255, 138, 136, 136), fontSize: 13),
          // icon: Text(
          //   '🎯',
          // ),
        ),
      ),
    );
  }
}
