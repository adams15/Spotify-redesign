import 'package:flutter/material.dart';
import 'package:spotify/onboarding_screen/continue_screen.dart';
import 'package:spotify/onboarding_screen/login_page.dart';

import '../component/btns.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});
  static String id = "SignUp";

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // logo and icons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
               children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, Continue_screen.id),
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
            const SizedBox(height: 25,),
              //body image
              Image.asset("images/group.png", height: 350,),
              const SizedBox(height: 25,),
              // sign up btn
              ElevatedButton(onPressed: (){},  
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                fixedSize: const Size(348,48),    
              ) ,
              child: const Text("Sign up free",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
              const SizedBox( height: 12,),
              // other btn
               Btns( image: Image.asset("images/phone.png"), label: "Continue with phone",),
               const SizedBox( height: 12,),
               Btns( image: Image.asset("images/Google.png"), label: "Continue with google",),
               const SizedBox( height: 12,),
               Btns( image: Image.asset("images/Facebook.png"), label: "Continue with facebook",),
               const SizedBox( height: 12,),
               GestureDetector( onTap: () => Navigator.pushNamed(context, Login.id),
                child: const Expanded(child: Text("Log in",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)))
        
            ],
          ),
        ),
    
      ),
    );
    
}}

