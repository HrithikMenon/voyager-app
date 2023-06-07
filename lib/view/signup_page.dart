import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voyager_app/constants/constants.dart';
import 'package:voyager_app/controllers/authentication_services.dart';
import 'package:voyager_app/view/sign_in_page.dart';
import 'package:voyager_app/view/temp_home.dart';
import 'package:voyager_app/widgets/signin_text_field.dart';

class SignUpPage extends StatefulWidget {
   const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _fullNameController = TextEditingController(); 

  final TextEditingController _emailController = TextEditingController(); 

  final TextEditingController _phoneNumberController = TextEditingController(); 

  final TextEditingController _passwordController = TextEditingController(); 

  bool userAlreadyExists= false;

  bool loadingStatus = false;
  String dialCode = '+91'; 
  Future<void> userSignUpFunction()async{
    setState(() {
      loadingStatus = true; 
    });
    AuthServices().signUpUser(_emailController.text, _passwordController.text, _fullNameController.text, dialCode+_phoneNumberController.text).then((value) {
      setState(() {
      loadingStatus = false; 
    });

    if(AuthServices().signUpUser(_emailController.text, _passwordController.text, _fullNameController.text, dialCode+_phoneNumberController.text)!= 'success'){
      setState(() {
        userAlreadyExists = true;
      });
    } 

    
    }); 
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent, 
        elevation: 0, 
        leading:  Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child:  CircleAvatar(
            radius: 10, 
            backgroundColor: Colors.grey.withOpacity(0.05),
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  SignInPage()));
              

            }, icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 14,))),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/voager1.png', color: Colors.black, width: 120, height: 120,),
                    GestureDetector(
                      onTap: (){
                       

//                         Get.snackbar(
//   'Title', // Snackbar title
//   'Message', // Snackbar message
//   snackPosition: SnackPosition.BOTTOM, // Snackbar position
//   duration: Duration(seconds: 3), // Snackbar duration
//   backgroundColor: Colors.grey[900], // Snackbar background color
//   colorText: Colors.white, // Snackbar text color
//   borderRadius: 10, // Snackbar border radius
//   margin: EdgeInsets.all(10), // Snackbar margin
// );
//                       },
                      },
                      child: Text('Create New Account', style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: -0.9 ),)), sh10,
                    Text('Fill your details to signup with a new account', style: GoogleFonts.montserrat(fontSize: 12,color: const Color.fromARGB(255, 150, 147, 147), fontWeight: FontWeight.w500),), 
                    sh20, 
                    SignInTextField(
                      obscure: false,
                      hintText: 'Full Name',valueController: _fullNameController, width: MediaQuery.of(context).size.width,), 
                    sh20, 
                    SignInTextField(
                      obscure: false,
                      hintText: 'Email',valueController: _emailController,width: MediaQuery.of(context).size.width, ),
                    sh20, 
                    Row(
                      children: [
                             SizedBox(
                           //color: Colors.black,
                    height: 60,
                   // width: 60,
                    child: CountryCodePicker(
                      flagWidth: 20,
                      enabled: true,
                      onChanged: (c){
                        dialCode = c.toString();
                        log(dialCode);
                      },
                      initialSelection: 'IN',
                     // showCountryOnly: true,
                      //showOnlyCountryWhenClosed: true,
                      favorite: const ['+91', 'IN'],
                    ),),
                         // SignInTextField(valueController: _fullNameController, hintText: '+91', width: 60),
                           
                          Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.05),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.grey.withOpacity(0.05), width: 2)),
                          
                                height: 50,
                                child: TextField(
                                  obscureText: false,
                                  controller: _phoneNumberController,
                                  decoration:  InputDecoration(
                                    fillColor: Colors.grey.withOpacity(0.05),
                                    filled: true,
                                    border: InputBorder.none,
                                    hintText: 'Phone Number',
                                    hintStyle:
                                          GoogleFonts.montserrat(color: const Color.fromARGB(255, 138, 136, 136), fontSize: 13),
                                    // icon: Text(
                                    //   '🎯',
                                    // ),
                                  ),
                                ),
                              ),
                          ),
                      ],
                    ), sh20, 
                    SignInTextField(
                      obscure: true,
                      valueController: _passwordController, hintText: 'Password', width: MediaQuery.of(context).size.width), 
                
                    sh20, sh20,
                    SizedBox(
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(65)
                      
                      width: MediaQuery.of(context).size.width,
                      child: (loadingStatus == true)? const Center(child: CircularProgressIndicator(),) : MaterialButton(onPressed: ()async{
                        await userSignUpFunction(); 
                        if(userAlreadyExists){
                           Get.snackbar('⚠️ Something went wrong', 'A user with these credentials already exists. Please try with another account.', );
                          
                          log('User Already exists');
                        } else{
                          log('signup success');
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TempHome()));
                        }
                        
                      },color: Colors.black, 
                      shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                
                  ),
                      height: 50,
                      child: Text('SIGN UP', style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w600),),)), sh20,
                      GestureDetector( 
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>  SignInPage()));
                        },
                        child: RichText(
                                        text: TextSpan(
                                            text: 'Already Have Account? ',
                                            style: GoogleFonts.montserrat(fontSize: 12,color: const Color.fromARGB(255, 150, 147, 147), fontWeight: FontWeight.w500),
                                            children: const [
                                              TextSpan(
                                                  text: 'Log In.',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      height: 1.6,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.bold)),
                                            ]),
                                      ),
                      )
                
                
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}