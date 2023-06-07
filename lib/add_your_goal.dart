import 'package:flutter/material.dart';

class AddyourGoal extends StatelessWidget {
  const AddyourGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 228, 232, 235),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.only(top: 55, left: 30),
                child: const Text(
                  "Add Your Goal",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "What",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "When",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "How",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Why",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(height: 50,
                child: TextFormField(
                  decoration:  InputDecoration(hintText: "Enter here",
                     prefixIcon: Image.asset("assets/images/archer.png"),
                    border: const OutlineInputBorder(),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
