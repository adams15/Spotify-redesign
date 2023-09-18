import 'package:flutter/material.dart';

class unsplash_screen extends StatelessWidget {
  const unsplash_screen({super.key});
  static String id = "unsplash_screen";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Image.asset("images/spotify.png", 
      height: 80,
      width: 266.52,
      )),
    );
  }
}