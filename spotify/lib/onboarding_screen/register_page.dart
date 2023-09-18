import 'package:flutter/material.dart';
import 'package:spotify/home_page.dart';
import 'package:spotify/onboarding_screen/signUp_page.dart';
import 'package:email_validator/email_validator.dart';
class Register extends StatelessWidget {
   Register({super.key});
  static String id = "Register";
  final _formkey = GlobalKey<FormState>();
// validate name
String? ValidateName(String? value){
    if(value == null || value.isEmpty){
      return "Pls enter name";
    }  
    return null;
  }
// validate password
   String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return "Pls enter password";
    }
    if (value.length <8){
      return "password must be at least 8 characters";
    }
    return null;
  }
  // validate email
    
  String? ValidateEmail(String? value){
    if(value == null|| value.isEmpty){
      return "Enter an email";
    }
    if (!EmailValidator.validate(value)){
      return "Enter email";
    }
    return null;
  }

//   // submit function
//   void submitForm(){
//   if (_formkey.currentState!.validate()){
//     Navigator.pushNamed(context, HomePage.id);
//   }
// }


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:30.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //spotify logo and icon
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                   children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, SignUp.id),
                        child: Container(
                          height: 40,
                          width: 40,
                         decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.grey.shade700),    
                          ),
                          child: const Center(child: Icon(Icons.arrow_back_ios, size: 24,)),
                        ),
                      ),
                      const SizedBox(width: 60.0,),
                      Image.asset("images/spotify.png",
                      width: 133,
                      height: 40,),
                    ],
                  ),
                ), 
                const SizedBox( height: 32.0,),  
              // text
              const Center(child: Text("Register", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
               const SizedBox( height: 16.0,), 
                const Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("If You Need Any Support",  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Colors.grey),),
                  SizedBox(width: 2,),
                  Text("Click here",  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Colors.green),),
                    ], ), 
                    const SizedBox( height: 32.0,), 
                    // name btn
                    TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter full name",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(24))
                    ),
                    validator: ValidateName,
                  ),
                    const SizedBox(height: 8,),
                    // email btn
                    TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(24))
                    ),
                    validator: ValidateEmail,
                  ),
                    // password btn
                    const SizedBox(height: 8,),
                     TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(24))
                    ),
                    validator: validatePassword,
                    obscureText: true,
                  ),
                  const SizedBox(height: 8,),
                // second btn
                TextFormField(
                    decoration: InputDecoration(
                      hintText: "confirm password",
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(24))
                    ),
                    validator: validatePassword,
                    obscureText: true,
                  ),
                
                // third btn
                 
                // fouth btn
                 
                     const SizedBox( height: 16.0,), 
                      // text
                      const Text("Forgot password?"),
                      const SizedBox( height: 16.0,), 
              //login btn
              ElevatedButton(onPressed: (){
                if (_formkey.currentState!.validate()){
                 Navigator.pushNamed(context, HomePage.id);} },  
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.green,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                 fixedSize: const Size(348,72),    
               ) ,
               child: const Text("Register",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
               color: Colors.black),),
               ), 
               const SizedBox( height: 24.0,), 
              //divider
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("or"),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ],
              
              ),
              
              //container
              Row(
                children: [
                     Expanded(
                       child: SizedBox(
                                     height: 58,
                                     width: 100,
                       child: (Card( color: Colors.black,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: const BorderSide(color: Colors.grey)),
                       child: Image.asset("images/fb.png"),
                       )),),
                     ),
                     //2
                     Expanded(
                       child: SizedBox(
                                     height: 58,
                                     width: 100,
                       child: (Card( color: Colors.black,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: const BorderSide(color: Colors.grey)),
                       child: Image.asset("images/Google.png"),
                       )),),
                     ),
                     //3
                     Expanded(
                       child: SizedBox(
                                     height: 58,
                                     width: 100,
                       child: (Card( color: Colors.black,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: const BorderSide(color: Colors.grey)),
                       child: Image.asset("images/Apple.png"),
                       )),),
                     ),
                         ], ),
                         const SizedBox(height: 32,),
                      //text
                      const Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(" have an account?"),
                          Text(" Log In", style: TextStyle(color: Color(0xffD7BD1E)),),
                        ],
                      )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

