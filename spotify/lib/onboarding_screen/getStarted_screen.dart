import 'package:flutter/material.dart';
import 'package:spotify/onboarding_screen/continue_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});
  static String id = "GetStarted";

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
                child: Image.asset("images/spotify.png",
                height: 40,
                width: 133,),
              ),
            ),
            Image.asset("images/group.png",
            height: 400,
           //width: 512,
            ),
            const Text("Music for everyone", style: TextStyle(
              color: Colors.green, fontSize: 24.0, fontWeight: FontWeight.w700
            ),),
            const Center(
              child: Text("Nulla Lorem mollit cupidatat irure."
              " Laborum magna nulla duis ullamco cillum ""dolor. Voluptate exercitation incididunt "
              "aliquip deserunt reprehenderit elit laborum. ", textAlign: TextAlign.center, style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 14.0
                 ),),
            ),
            SizedBox(
              width: 342,
              height: 69,
            
              child: ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade700,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80))
                    
              ),
                onPressed:(){
                  Navigator.pushNamed(context, Continue_screen.id);
                }, child: const Text("Get Started", style: TextStyle(fontSize: 24, color: Colors.white),),
                ),
            )
          
          ],
        ),
      ),
    );
  }
}