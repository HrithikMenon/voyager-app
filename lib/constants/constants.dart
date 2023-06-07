import 'package:flutter/material.dart';
import 'package:get/get.dart';


const backgroundColor = Color.fromARGB(255, 238, 232, 232); 
const sh10 = SizedBox(height: 10,); 
const sh20 = SizedBox(height: 20,); 
const sw10 = SizedBox(width: 10,); 
const sw20 = SizedBox(width: 20,); 

void showSnackkBar(){
    Get.snackbar(
                        'Title', // Snackbar title
                        'Message', // Snackbar message
                        snackPosition:
                            SnackPosition.BOTTOM, // Snackbar position
                        duration:
                            const Duration(seconds: 3), // Snackbar duration
                        backgroundColor:
                            Colors.grey[900], // Snackbar background color
                        colorText: Colors.white, // Snackbar text color
                        borderRadius: 10, // Snackbar border radius 
                        margin: const EdgeInsets.all(10), // Snackbar margin
                      );
                     
  }


