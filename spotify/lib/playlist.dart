import 'package:flutter/material.dart';
import 'package:spotify/history.dart';
import 'package:spotify/home_page.dart';

class Playlist extends StatelessWidget {
  const Playlist ({super.key});
  static String id = "Playlist";

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
                    Column(
                    children: [
                      Image.asset("images/music.png", color: Colors.green,),
                      const SizedBox(height: 4,),
                      const Text("Playlist", style: TextStyle(color: Colors.green), ),
                    ],
                  ),
                  //3
                   GestureDetector(
                    onTap: () => Navigator.pushNamed(context, History.id),
                     child: Column(
                      children: [
                        Image.asset("images/clock.png"),
                        const SizedBox(height: 4,),
                        const Text("History", ),
                      ],
                                     ),
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
        body:   Padding(
          padding: const EdgeInsets.symmetric(horizontal:15.0),
          child: SingleChildScrollView(
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // app bar componrnt
                const Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.search, size: 30,),
                        Text("Playlist", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                        Icon(Icons.add, size: 30,)
                        ],
                      ),
                       const SizedBox(height: 30,),
                       // containers
                       //1
                       
                       Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           children: [
                       Column( crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container( height: 150, width: 150,
                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(12)),
                                child: ClipRRect(borderRadius: BorderRadius.circular(12),
                           child: Image.asset("images/con9.webp",fit: BoxFit.fill,),),
                           ),
                           const SizedBox(height: 8,),
                            const Text("Liked Songs", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                             const SizedBox(height: 4,),
                              const Text("124 songs"),
                         ],
                       ),
                       Column( crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container( height: 150, width: 150,
                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(12)),
                           child: ClipRRect(borderRadius: BorderRadius.circular(12),
                           child: Image.asset("images/con8.webp",fit: BoxFit.fill,),),
                           ),
                            const SizedBox(height: 8,),
                            const Text("Happiness", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                             const SizedBox(height: 4,),
                              const Text("67 songs"),
                         ],
                       ),]),
                       const SizedBox(height: 8,),
                       //2
                       Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           children: [
                       Column( crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container( height: 150, width: 150,
                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(12)),
                                child: ClipRRect(borderRadius: BorderRadius.circular(12),
                           child: Image.asset("images/con7.webp",fit: BoxFit.fill,),),
                           ),
                           const SizedBox(height: 8,),
                            const Text("Liked Songs", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                             const SizedBox(height: 4,),
                              const Text("124 songs"),
                         ],
                       ),
                       Column( crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container( height: 150, width: 150,
                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(12)),
                           child: ClipRRect(borderRadius: BorderRadius.circular(12),
                           child: Image.asset("images/con6.webp",fit: BoxFit.fill,),),
                           ),
                            const SizedBox(height: 8,),
                            const Text("Happiness", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                             const SizedBox(height: 4,),
                              const Text("67 songs"),
                         ],
                       ),]),
                       const SizedBox(height: 8,),
                       //3
                       Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           children: [
                       Column( crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container( height: 150, width: 150,
                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(12)),
                                child: ClipRRect(borderRadius: BorderRadius.circular(12),
                           child: Image.asset("images/con5.webp",fit: BoxFit.fill,),),
                           ),
                           const SizedBox(height: 8,),
                            const Text("Liked Songs", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                             const SizedBox(height: 4,),
                              const Text("124 songs"),
                         ],
                       ),
                       Column( crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container( height: 150, width: 150,
                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(12)),
                           child: ClipRRect(borderRadius: BorderRadius.circular(12),
                           child: Image.asset("images/con4.webp",fit: BoxFit.fill,),),
                           ),
                            const SizedBox(height: 8,),
                            const Text("Happiness", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                             const SizedBox(height: 4,),
                              const Text("67 songs"),
                         ],
                       ),]),
                       
                          
                       
                       
               
              ],
            ),
          ),
        ),
       
        
      ),
    );
  }
}

