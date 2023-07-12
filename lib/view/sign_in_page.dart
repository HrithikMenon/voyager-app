import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voyager_app/constants/constants.dart';
import 'package:voyager_app/controllers/authentication_services.dart';
import 'package:voyager_app/view/paused_goals.dart';
import 'package:voyager_app/view/scrollscreen.dart';
import 'package:voyager_app/widgets/signin_text_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool loadingStatus = false;
  bool signInSuccessOrNot = false;

  Future<void> userSignInFunction()async{
    
    setState(() {
      loadingStatus = true;
    });
    AuthServices().signInUser(_emailController.text, _passwordController.text).then((value) {
      setState(() {
        loadingStatus = false;
      }); 
     

    }).then((value) {
       if(AuthServices().signInUser(_emailController.text, _passwordController.text) == 'success'){
      
      setState(() {
        signInSuccessOrNot = true; 
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
          leading: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.grey.withOpacity(0.05),
                child: IconButton(
                    onPressed: () {
       
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 15,
                    ))),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/voager1.png',
                  color: Colors.black,
                  width: 120,
                  height: 120,
                ),
                Text(
                  'Welcome Back !',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.9),
                ),
                sh20,
                sh20,
                SignInTextField(
                    valueController: _emailController,
                    obscure: false,
                    hintText: 'Email',
                    width: MediaQuery.of(context).size.width),
                sh20,
                SignInTextField(
                    valueController: _passwordController,
                    obscure: true,
                    hintText: 'Password',
                    width: MediaQuery.of(context).size.width),
                sh20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PausedGoals()));
                      },
                      child: Text(
                        'Forgot password?',
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                sh20,
                sh20,
                SizedBox(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(65)

                    width: MediaQuery.of(context).size.width,
                    child:(loadingStatus)? const Center(child: CircularProgressIndicator(),): MaterialButton(
                      onPressed: () async{
                        await userSignInFunction(); 
                        //  if(signInSuccessOrNot==true){
                        //   log('Sign IN SuCCESS');
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  ScrollScreen(),));
                        
                        // } else{
                        //  log('SIgn IN ERROR');
                        // }
                        //then((value) {
                        //    if(signInSuccessOrNot){
                        //   Navigator.push(context, MaterialPageRoute(builder: (context) => TempHome(),));
                        
                        // } else{
                        //   log('SIgn IN ERROR');
                        // }
                        // });
                       
                      },
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      child: Text(
                        'LOG IN',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    )),
              ],
            ))));
  }
}
