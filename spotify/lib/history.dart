import 'package:flutter/material.dart';
import 'package:spotify/home_page.dart';
import 'package:spotify/playlist.dart';

import 'profile.dart';


class History extends StatelessWidget {
  const History({super.key});
  static String id = "History";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        backgroundColor: Colors.black,
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
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, HomePage.id),
                    child: Column(
                      children: [
                        Image.asset("images/home.png"),
                        const SizedBox(height: 4,),
                        const Text("Home",),
                      ],
                    ),
                  ),
                   //2
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, Playlist.id),
                      child: Column(
                      children: [
                        Image.asset("images/music.png", ),
                        const SizedBox(height: 4,),
                        const Text("Playlist",  ),
                      ],
                                      ),
                    ),
                  //3
                   GestureDetector(
                    onTap: () => Navigator.pushNamed(context, History.id),
                     child: Column(
                      children: [
                        Image.asset("images/clock.png",color: Colors.green,),
                        const SizedBox(height: 4,),
                        const Text("History", style: TextStyle(color: Colors.green),),
                      ],
                                     ),
                   ),
                  //4
                   GestureDetector( onTap: () => Navigator.pushNamed(context, Profile.id),
                     child: Column(
                      children: [
                        Image.asset("images/frame.png"),
                        const SizedBox(height: 4,),
                        const Text("Profile",),
                      ],
                                     ),
                   ),
                ],
              ),
            ),
        
          ),
          ),


      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal:25.0),
        child: SingleChildScrollView(
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [// app bars
              const Row( mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text("History", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                SizedBox(width: 100,),
                Icon(Icons.more_horiz_outlined, size: 50,)
              ],),
              // Today
              const SizedBox(height: 40,),
              const Text("Today", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
               const SizedBox(height: 16,),
               Row(
                 children: [
                   Container(
                    height:120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green
                    ),
                    child:ClipRRect(borderRadius: BorderRadius.circular(12),
                    child: Image.asset("images/con7.webp", fit: BoxFit.fill,),), ),
                    const SizedBox(width: 16,),
                    const Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Happiers", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
                        SizedBox(height: 8,),
                        Text("Playlist", style: TextStyle(fontSize: 16),),],)],),
                         const SizedBox(height: 12,),
                         //2
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:30.0),
                            child: Row( 
                                         children: [
                                           Container(
                                            height:90,
                                            width: 90,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              color: Colors.green
                                            ),
                                            child:ClipRRect(borderRadius: BorderRadius.circular(12),
                                            child: Image.asset("images/Ran.png", fit: BoxFit.fill,),), ),
                                            const SizedBox(width: 16,),
                                            const Column( crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Dekat Di Hati", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
                                                SizedBox(height: 8,),
                                                Text("RAN", style: TextStyle(fontSize: 16),),],)],),
                          ),
                           const SizedBox(height: 12,),
                          //3
                           Padding(
                            padding: const EdgeInsets.symmetric(horizontal:30.0),
                            child: Row( 
                                         children: [
                                           Container(
                                            height:90,
                                            width: 90,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              color: Colors.green
                                            ),
                                            child:ClipRRect(borderRadius: BorderRadius.circular(12),
                                            child: Image.asset("images/Hivi.png", fit: BoxFit.fill,),), ),
                                            const SizedBox(width: 16,),
                                            const Column( crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Remaja", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
                                                SizedBox(height: 8,),
                                                Text("Hivi!", style: TextStyle(fontSize: 16),),],),
                                                ],),
                                                ), const SizedBox(height: 16,),
            const Padding(
              padding: EdgeInsets.only(left:30.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("See all 28 played", style: TextStyle(fontWeight: FontWeight.bold),),
                  Icon(Icons.more_vert_outlined)
                ],
              ),
            ),                                    
            const SizedBox(height: 24,),
            const Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Yesterday", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
             const SizedBox(height: 16,),
          // second part
          Row(
                 children: [
                   Container(
                    height:120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green
                    ),
                    child:ClipRRect(borderRadius: BorderRadius.circular(12),
                    child: Image.asset("images/taylor.png", fit: BoxFit.fill,),), ),
                    const SizedBox(width: 16,),
                    const Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sadness", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
                        SizedBox(height: 8,),
                        Text("Playlist", style: TextStyle(fontSize: 16),),],)],),
                         const SizedBox(height: 12,),
                         //2
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:30.0),
                            child: Row( 
                                         children: [
                                           Container(
                                            height:90,
                                            width: 90,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              color: Colors.green
                                            ),
                                            child:ClipRRect(borderRadius: BorderRadius.circular(12),
                                            child: Image.asset("images/con6.webp", fit: BoxFit.fill,),), ),
                                            const SizedBox(width: 16,),
                                            const Column( crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Dekat Di Hati", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
                                                SizedBox(height: 8,),
                                                Text("RAN", style: TextStyle(fontSize: 16),),],)],),
                          ),
                           const SizedBox(height: 12,),
                          //3
                           Padding(
                            padding: const EdgeInsets.symmetric(horizontal:30.0),
                            child: Row( 
                                         children: [
                                           Container(
                                            height:90,
                                            width: 90,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              color: Colors.green
                                            ),
                                            child:ClipRRect(borderRadius: BorderRadius.circular(12),
                                            child: Image.asset("images/Hivi.png", fit: BoxFit.fill,),), ),
                                            const SizedBox(width: 16,),
                                            const Column( crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Remaja", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
                                                SizedBox(height: 8,),
                                                Text("Hivi!", style: TextStyle(fontSize: 16),),],),
                                                ],),
                                                ), const SizedBox(height: 16,),
            const Padding(
              padding: EdgeInsets.only(left:30.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("See all 28 played", style: TextStyle(fontWeight: FontWeight.bold),),
                  Icon(Icons.more_vert_outlined)
                ],
              ),
            ),                                   
          
        
        
        
            ],
              
          ),
        ),
      ),
    ),);
  }
}