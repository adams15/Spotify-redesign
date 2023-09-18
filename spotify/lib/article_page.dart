import 'package:flutter/material.dart';
import 'package:spotify/Lyrics.dart';
import 'package:spotify/playlist.dart';

import 'component/card.dart';

class Article extends StatelessWidget {
  const Article({super.key});
  static String id = "Article";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Image.asset("images/Maskbtn.png"),
        backgroundColor: Colors.black,
        ),
        bottomNavigationBar:  Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25)
          ),
          height: 80.0,
          
          child: BottomAppBar(
            
            notchMargin: 3.0,
            shape: const CircularNotchedRectangle(),
            color: const Color.fromARGB(255, 75, 72, 72),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 10.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("images/home.png"),
                      const SizedBox(height: 4,),
                      const Text("Home",),
                    ],
                  ),
                   //2
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, Playlist.id),
                      child: Column(
                      children: [
                        Image.asset("images/music.png"),
                        const SizedBox(height: 4,),
                        const Text("Playlist", ),
                      ],
                                      ),
                    ),
                  //3
                   Column(
                    children: [
                      Image.asset("images/clock.png"),
                      const SizedBox(height: 4,),
                      const Text("History", ),
                    ],
                  ),
                  //4
                   Column(
                    children: [
                      Image.asset("images/frame.png"),
                      const SizedBox(height: 4,),
                      const Text("Profile",),
                    ],
                  ),
                ],
              ),
            ),
        
          ),
        ),
       
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25))
                    
                    ),
                    child: ClipRRect(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25), 
                    bottomRight: Radius.circular(25)),
                    child: Image.asset("images/Tulu.png", fit: BoxFit.cover,
                    width: double.infinity,
                    height: 500,),)
                    ),
                    // write up
                     Padding(
                     padding: const EdgeInsets.all(25.0),
                     child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   SizedBox( // how to center the icon inside the card
                                     width: 45, height: 45,
                                     child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, Lyrics.id),
                      child: Card( color: const Color.fromARGB(255, 21, 9, 153),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100),
                        side: const BorderSide(color: Colors.grey)),
                        child: const Icon(Icons.arrow_back_ios), ),
                                     ),),
                       //const SizedBox(width: 71,)
                       Row( mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           OutlinedButton(onPressed: (){}, 
                           child: const Text("Follow", style: TextStyle( color: Colors.white),),
                           style: OutlinedButton.styleFrom(
                            shape: const StadiumBorder(),
                            side: const BorderSide(color: Colors.white, width: 2)
                           ),
                           ),
                            const Icon(Icons.more_horiz, size: 50,), ],),
                      ],),), ], ),
                      const SizedBox(height: 16,),
                      const Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Followers"),
                          Text("Monthly listerners"),
                        ],
                      ),
                      const SizedBox(height: 10,),
                       const Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [ // how to center the number with the follower text
                          Text("12k" ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                          Text("112M", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                        ],
                      ),
        
                      // Albums
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15.0),
                        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Albums", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                           const SizedBox(height: 12),
                                       
                                          SizedBox(
                                           height: 200,
                        child: ListView(
                          
                          scrollDirection: Axis.horizontal,
                          children: [
                        Expanded(child: ListCard(label1: "ArTi Untuk ", label2: "Arsy Widianto, ...",
                        child: Image.asset("images/card2.png"),
                            )),
                        const SizedBox(width: 16,), 
                        Expanded(child: ListCard(label1: "Runtuh", label2: "Fiersa",
                        child: Image.asset("images/card3.png"),)),
                        const SizedBox(width: 16,),  
                        Expanded(child: ListCard(label1: "Blue Jeans", label2: "GANGGA",
                        child: Image.asset("images/Gangga.png"),)),
                        const SizedBox(width: 16,),
                         Expanded(child: ListCard(label1: "Runtuh", label2: "Fiersa",
                        child: Image.asset("images/card3.png"),)),
                        const SizedBox(width: 16,),  
                         Expanded(child: ListCard(label1: "Asake", label2: "Mr. money",
                        child: Image.asset("images/card3.png"),)),
                        const SizedBox(width: 16,),  
                          ],
                        ),
                        ),
                          const SizedBox(height: 16,), 
                         // text listview
                         const Text("Songs", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          const SizedBox(height: 8,),
                         // list view
                        SizedBox(  height: 200,
                          child:ListView( 
                        children:  [
                          ListTile( 
                          contentPadding: EdgeInsets.zero,
                            // how to increase the size of the image
                            leading: ClipRRect(child: Image.asset("images/card2.png",),
                            borderRadius: BorderRadius.circular(100),),
                            title: const Text("Adams "),
                            subtitle: const Text("43,877,516 monthly listeners"),
                            trailing: const Icon(Icons.arrow_forward_ios),
                            onTap: () {},
                            
                          ),
                          ListTile( contentPadding: EdgeInsets.zero,
                            // how to increase the size of the image
                            leading: ClipRRect(child: Image.asset("images/Gangga.png",),
                            borderRadius: BorderRadius.circular(100),),
                            title: const Text("Ibrahim "),
                            subtitle: const Text("43,877,516 monthly listeners"),
                            trailing: const Icon(Icons.arrow_forward_ios),
                            onTap: () {},
                            
                           ),
                          ListTile( contentPadding: EdgeInsets.zero,
                            // how to increase the size of the image
                            leading: ClipRRect(child: Image.asset("images/card3.png",),
                            borderRadius: BorderRadius.circular(100),),
                            title: const Text("Montana "),
                            subtitle: const Text("43,877,516 monthly listeners"),
                            trailing: const Icon(Icons.arrow_forward_ios),
                            onTap: () {},
                            
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero, // how to increase the size of the image
                          // how to make it to start and remove the inner padding
                            leading: ClipRRect(child: Image.asset("images/card2.png",),
                            borderRadius: BorderRadius.circular(100),),
                            title: const Text("Adams "),
                            subtitle: const Text("43,877,516 monthly listeners"),
                            trailing: const Icon(Icons.arrow_forward_ios),
                            onTap: () {},
                            
                          ),
                        ],
                                          
                                          ),
                                        ),
                      
                          ],
                        ),
                      )
                        
            ],
          ),
        ),
      ),
    );
  }
}