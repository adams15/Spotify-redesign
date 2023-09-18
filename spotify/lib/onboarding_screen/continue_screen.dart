import 'package:flutter/material.dart';
import 'package:spotify/onboarding_screen/getStarted_screen.dart';
import 'package:spotify/onboarding_screen/signUp_page.dart';

class Continue_screen extends StatelessWidget {
  const Continue_screen({super.key});
  static String id = "Continue_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  
                  children: [
                    
                    GestureDetector(
                      onTap: () {
                       Navigator.pushNamed(context, GetStarted.id); 
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          
                          border: Border.all(
                            color: Colors.grey.shade700,
                          )
                          
                        ),
                        child: const Center(child: Icon(Icons.arrow_back_ios, size: 25, color: Colors.green,
                        ))),
                    ),
                    const SizedBox(width: 70,),
                    Image.asset("images/spotify.png",
                    height: 40,
                    width: 133,),
                    
                  ],
                ),
              ),
            ),
            Image.asset("images/group.png",
            height: 400,
            ),
            // continue btn
           ElevatedButton(onPressed: (){Navigator.pushNamed(context, SignUp.id) ;},  
           style: ElevatedButton.styleFrom(
             backgroundColor: Colors.green,
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
             fixedSize: const Size(348,72),    
           ) ,
           child: const Text("Continue",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
           ), 
             ],
        ),
      ),
    );
  }
}