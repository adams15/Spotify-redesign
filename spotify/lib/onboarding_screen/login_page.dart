import 'package:flutter/material.dart';
import 'package:spotify/onboarding_screen/register_page.dart';
import 'package:spotify/onboarding_screen/signUp_page.dart';
class Login extends StatelessWidget {
  const Login({super.key});
  static String id = "Login";

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:30.0),
          child: SingleChildScrollView(
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
              const SizedBox( height: 80.0,),  
            // text
            const Center(child: Text("Log In", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
             const SizedBox( height: 16.0,), 
              const Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("If You Need Any Support",  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Colors.grey),),
                SizedBox(width: 2,),
                Text("Click here",  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Colors.green),),
                  ], ), 
                  const SizedBox( height: 32.0,), 
                  // two same btn
                  Container(
       height: 72,
       width: 348,
       decoration: BoxDecoration(
         border: Border.all(color: Colors.grey),
         borderRadius: BorderRadius.circular(24)
       ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal:25.0),
        child: Center(
          child: TextField(
            decoration: InputDecoration( 
              border: InputBorder.none,
              hintText: "Enter your username",
            ), 
          ),
        ),
      ),
    ),
    const SizedBox(height: 16,),
    // second btn
     Container(
       height: 72,
       width: 348,
       decoration: BoxDecoration(
         border: Border.all(color: Colors.grey),
         borderRadius: BorderRadius.circular(24)
       ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal:25.0),
        child: Center(
          child: TextField(
            decoration: InputDecoration( 
              border: InputBorder.none,
              hintText: "Enter your password",
              suffixIcon: Icon(Icons.remove_red_eye)
            ), 
          ),
        ),
      ),
    ),
                  
                   const SizedBox( height: 16.0,), 
                    // text
                    const Text("Forgot password?"),
                    const SizedBox( height: 16.0,), 
            //login btn
            ElevatedButton(onPressed: (){},  
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.green,
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
               fixedSize: const Size(348,72),    
             ) ,
             child: const Text("Log In",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
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
                     Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("don't have an account?"),
                        GestureDetector(onTap: ()=>Navigator.pushNamed(context, Register.id),
                          child: const Text(" Register", style: TextStyle(color: Color(0xffD7BD1E)),)),
                      ],
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

