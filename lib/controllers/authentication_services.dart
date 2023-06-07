import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance; 
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String>signUpUser(String email, String password, String userName, String phoneNumber)async{
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password).then((value) {
          _firestore.collection('Users').doc(_firebaseAuth.currentUser!.uid).set({
        'userName' : userName, 
        'userID': _firebaseAuth.currentUser!.uid,
        'email' : email, 
        'phoneNumber' : phoneNumber, 
      }).then((value) =>  FirebaseAuth.instance.currentUser!.updateDisplayName(userName));



      }); 
      log('uid: ${_firebaseAuth.currentUser!.uid}'); 
    

         return 'success';
     

      
    } 
    
     catch(e){
      log(e.toString());
        return e.toString();
     }
  } 

  Future<String>signInUser(String email, String password)async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password).then((value) => log(_firebaseAuth.currentUser!.displayName!));
      log('success');
      return 'success';
    } catch(e){
      log(e.toString());
       return e.toString();
    }
   
  }
}