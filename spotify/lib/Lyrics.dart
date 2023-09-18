import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:spotify/article_page.dart';
import 'package:spotify/music_page.dart';


class Lyrics extends StatelessWidget {
  const Lyrics({super.key});
  static String id = "Lyrics";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.black,
      body: Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
             children: [
                Container(
               decoration: const BoxDecoration(
                color: Colors.green,
                
                ),
                child: ClipRRect(
                child: Image.asset("images/sisa2.png", fit: BoxFit.cover,
                width: double.infinity,
                height: 500,
                ),),),
                // stack write up
                 Padding(
                   padding: const EdgeInsets.all(25.0),
                   child: Row(
                               children: [
                                 SizedBox( // how to center the icon inside the card
                                   width: 45, height: 45,
                                   child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, MusicPage.id),
                    child: Card( color: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100),
                      side: const BorderSide(color: Colors.grey)),
                      child: const Icon(Icons.arrow_back_ios), ),
                                   ),),
                     const SizedBox(width: 71,),
                     const Text("Sisa Rasa", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                     
                      ],),
                 ),
                // learn how to write on stack
              ],
           ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 150,
                    child: ListView( 
                      children:  [
                        ListTile( 
                      leading: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset("images/sisa2.png", fit: BoxFit.fill,))),
                      title: const Text("Sisa Rasa", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                      subtitle: const Text("Mahalini",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),), 
                      trailing:GestureDetector( onTap: () => Navigator.pushNamed(context, Article.id),
                        child: const Icon(Icons.favorite, size: 35,color: Colors.green,)),
                      onTap: () => Navigator.pushNamed(context, Article.id),
                     )
                      ],
                    ),
                  ),
                
                   const SizedBox(height: 0,), 
                  
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
                 
              ],),
            ), 
            
      
      
      
      
        ],
      ),
    
    );
  }
}