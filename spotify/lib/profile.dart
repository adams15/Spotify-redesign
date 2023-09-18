
import 'package:flutter/material.dart';
import 'package:spotify/playlist.dart';
import 'history.dart';
import 'home_page.dart';
import 'music_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  static String id = "Profile";

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
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
                          Image.asset("images/clock.png",),
                          const SizedBox(height: 4,),
                          const Text("History", ),
                        ],
                                       ),
                     ),
                    //4
                     Column(
                      children: [
                        Image.asset("images/frame.png",color: Colors.green,),
                        const SizedBox(height: 4,),
                        const Text("Profile",style: TextStyle(color: Colors.green),),
                      ],
                    ),
                  ],
                ),
              ),
          
            ),
            ),
            body: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column( 
                  children: [
                    Container(
                      height: 350,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 75, 72, 72),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(64), bottomRight: Radius.circular(64))
                        
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                         children: [ 
                        const Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Profile", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                        // Icon(Icons.more_horiz_outlined, size: 50,),
                         ], ),
                         const SizedBox(height: 16,),
                         Container( width: 80, height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)
                          ),
                          child: ClipRRect(borderRadius: BorderRadius.circular(100),
                          child: Image.asset("images/con6.webp", fit: BoxFit.fill,),)),
                            const SizedBox(height: 16,),
                            const Text("Fauzian Ahmad", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 24 ),),
                            const SizedBox(height: 8,),
                           const  Text("fauzianahmad04@gmail.com"),
                            const SizedBox(height: 25,),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal:40.0),
                              child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text("Followers"),
                                      SizedBox(height: 8,),
                                        Text("339",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16))
                                  
                                    ],
                                  ),
                                  SizedBox(width: 50,),
                                  Column(
                                    children: [
                                      Text("Followers"),
                                      SizedBox(height: 8,),
                                        Text("129",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16))
                                   ], )],),), ],), ),), ],),
              const SizedBox(height:24 ,),
              // share and find friend
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset("images/frame.png",),
                       const SizedBox(height:8),
              const Text("Find friend"),   
                    ],
                  ),
                   Column(
                    children: [
                      Image.asset("images/share.png"),
                       const SizedBox(height:8),
              const Text("Share"),   
                    ],
                  ),
                ],
              ),
            const SizedBox(height:24 ,),  
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:24.0),
              child: Text("Mostly played",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
            ) ,  
             const SizedBox(height:24 ,),  
             SizedBox( height: 80,
               child: Expanded(
                 child: ListView(
                  children: [
                    ListTile(
                      leading: ClipRRect(child: Image.asset("images/con4.webp"),
                      borderRadius: BorderRadius.circular(12),),
                      title:const Text( "Dekat Di Hati"),
                      subtitle: const Text("Ran"),
                      trailing: const Icon(Icons.more_vert_outlined),
                      onTap: () {Navigator.pushNamed(context, MusicPage.id);},
                    ),
                     ListTile(
                      leading: ClipRRect(child: Image.asset("images/con5.webp"),
                      borderRadius: BorderRadius.circular(12),),
                      title:const Text( "Dekat Di Hati"),
                      subtitle: const Text("Ran"),
                      trailing: const Icon(Icons.more_vert_outlined),
                      onTap: () {},
                    ),
                     ListTile(
                      leading: ClipRRect(child: Image.asset("images/con4.webp"),
                      borderRadius: BorderRadius.circular(12),),
                      title:const Text( "Last ending"),
                      subtitle: const Text("Aye"),
                      trailing: const Icon(Icons.more_vert_outlined),
                      onTap: () {},
                    ),
                     ListTile(
                    leading: ClipRRect(child: Image.asset("images/con6.webp"),
                    borderRadius: BorderRadius.circular(12),),
                    title:const Text( "Mr. Money"),
                    subtitle: const Text("fada"),
                    trailing: const Icon(Icons.more_vert_outlined),
                    onTap: () {},
                  ),
                   ListTile(
                    leading: ClipRRect(child: Image.asset("images/con7.webp"),
                    borderRadius: BorderRadius.circular(12),),
                    title:const Text( "Not yet"),
                    subtitle: const Text("Don"),
                    trailing: const Icon(Icons.more_vert_outlined),
                    onTap: () {},
                  ),
                  ],
                 ),
               ),
             )            
              ],
            ),
    
      ),
    );
  }
}