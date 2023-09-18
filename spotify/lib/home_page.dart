import 'package:flutter/material.dart';
import 'package:spotify/component/card.dart';
import 'package:spotify/playlist.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "HomePage";


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
            color: Color.fromARGB(255, 75, 72, 72),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 10.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("images/homeicon.png"),
                      const SizedBox(height: 4,),
                      const Text("Home", style: TextStyle(color: Colors.green),),
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // app bar component
                
                 Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.search, size: 30,),
                    Image.asset("images/spotify.png", height:40, width: 133,),
                    const Icon(Icons.settings, size: 30,)
                    ],
                  ),
                
                const SizedBox(height: 40,),
                // scroll card
                
                Container(
                  width: 365, height: 152,
                   decoration:  BoxDecoration(
                    color: const Color(0xffD7BD1E),
                    borderRadius:BorderRadius.circular(24),
                     ),
                     child:  Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal:25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Popular"),
                              SizedBox(height: 8,),
                           Text("Sisa Rasa", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                            SizedBox(height: 8,),
                            Text("Mahalini"),
                         ],
                          ),
                        ),
                        SizedBox(
                          height: 152, width: 144,
                          child: Image.asset("images/mahani.png",),
                        ),
                      ],
                     ),),
                      const SizedBox(height: 32),
                      const Text("Today's hits", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
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
                  const SizedBox(height: 20,), 
                  // text listview
                  SizedBox(
                    height: 50,
                    child: Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                      children: const [
                        Text("Artists", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
                        SizedBox(width: 50,), 
                         Text("Albums", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.grey  ),),
                        SizedBox(width: 50,), 
                         Text("Podcast", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.grey  ),),
                        SizedBox(width: 50,), 
                         Text("Qu'ran", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.grey ),),
                        SizedBox(width: 50,), 
                        
                      ],  
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,), 
                // list view
                SizedBox(
                  height: 200,
                  child:ListView( 
                    
                    
                    //scrollDirection: Axis.vertical,
                    children:  [
                      ListTile( 
                      contentPadding: EdgeInsets.zero,
                        // how to increase the size of the image
                        leading: ClipRRect(child: Image.asset("images/card2.png",),
                        borderRadius: BorderRadius.circular(100),),
                        title: Text("Adams "),
                        subtitle: Text("43,877,516 monthly listeners"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                        
                      ),
                      ListTile( contentPadding: EdgeInsets.zero,
                        // how to increase the size of the image
                        leading: ClipRRect(child: Image.asset("images/Gangga.png",),
                        borderRadius: BorderRadius.circular(100),),
                        title: Text("Ibrahim "),
                        subtitle: Text("43,877,516 monthly listeners"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                        
                       ),
                      ListTile( contentPadding: EdgeInsets.zero,
                        // how to increase the size of the image
                        leading: ClipRRect(child: Image.asset("images/card3.png",),
                        borderRadius: BorderRadius.circular(100),),
                        title: Text("Montana "),
                        subtitle: Text("43,877,516 monthly listeners"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                        
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero, // how to increase the size of the image
                      // how to make it to start and remove the inner padding
                        leading: ClipRRect(child: Image.asset("images/card2.png",),
                        borderRadius: BorderRadius.circular(100),),
                        title: Text("Adams "),
                        subtitle: Text("43,877,516 monthly listeners"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                        
                      ),
                    ],
                  
                  ),
                ),
                // bottom nav bars
               
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}


