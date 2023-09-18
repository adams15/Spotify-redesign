import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:spotify/Lyrics.dart';
import 'package:spotify/profile.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});
  static String id = "MusicPage";

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor:Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15.0),
          child: SingleChildScrollView(
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox( // how to center the icon inside the card
                      width: 45, height: 45,
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, Profile.id),
                        child: Card( color: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100),
                          side: const BorderSide(color: Colors.grey)),
                          child: const Icon(Icons.arrow_back_ios), ),
                      ),),
                         const SizedBox(width: 71,),
                    const Text("Now Playing", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),) ],),
                 const SizedBox(height: 24,), 
                 Container(
                  height: 400,
                  width: 400,
                 
                  decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16)
                  ),
                  child: ClipRRect(borderRadius: BorderRadius.circular(16),
                  child: Image.asset("images/sisa2.png", fit: BoxFit.fill,),),),
                  const SizedBox(height: 24,), 
                  const Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sisa Rasa", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                      Icon(Icons.favorite, size: 35,color: Colors.red,) ], ),
                       const SizedBox(height: 10,), 
                       const Text("Mahalini",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                       const SizedBox(height: 30,), 
          
          LinearPercentIndicator(
            lineHeight: 7,
            percent: 0.5,
            progressColor: Colors.green,
            barRadius: const Radius.circular(100),
            backgroundColor: const Color.fromARGB(255, 233, 227, 227),
          ),
           const SizedBox(height: 6,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:10.0),
            child:   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
            Text("2:07"),
            Text("-2:07")
            ],),
          ),
          const SizedBox(height: 20,),
          const Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.repeat),
              Icon(Icons.skip_previous),
              Icon(Icons.play_circle, size: 40.0,color:Colors.green,),
              Icon(Icons.skip_next),
              Icon(Icons.shuffle),
            ],
          ),
          const SizedBox(height: 15,),
          
          Center(child: Image.asset("images/vec.png")),
          const SizedBox(height: 5,),
           GestureDetector(
            onTap: () =>  Navigator.pushNamed(context, Lyrics.id),
            child: const Center(child: Text("Lyrics")))
          
          
          
          
              ],
            ),
          ),
        ),
    
      ),
    );
  }
}