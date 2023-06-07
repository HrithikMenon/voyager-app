import 'package:flutter/material.dart';

class MyStackPage extends StatelessWidget {
  const MyStackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 500, left: 100),
        child: Container(
          height: 150,
          width: 250,
          color: Color.fromARGB(59, 40, 49, 74),
          child: Center(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 138, 126, 120),
                      borderRadius: BorderRadius.circular(25)),
                  height: 40,
                  width: 40,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50, left: 100),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 115, 117, 131),
                      borderRadius: BorderRadius.circular(20)),
                  height: 40,
                  width: 40,
                  alignment: Alignment.bottomRight,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 100, left: 50),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 185, 34, 34),
                      borderRadius: BorderRadius.circular(20)),
                  height: 40,
                  width: 40,
                  alignment: Alignment.bottomLeft,
                  child: const Center(child: Icon(Icons.cancel)),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 5, left: 60),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 166, 144, 112),
                        borderRadius: BorderRadius.circular(20)),
                    height: 40,
                    width: 40,
                    alignment: Alignment.bottomLeft),
                Container(
                    margin: const EdgeInsets.only(top: 60, left: 0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 148, 117, 127),
                        borderRadius: BorderRadius.circular(20)),
                    height: 40,
                    width: 40,
                    alignment: Alignment.bottomLeft),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
