import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spotify/onboarding_screen/getStarted_screen.dart';

class unsplash_screen extends StatefulWidget {
  const unsplash_screen({super.key});
  static String id = "unsplash_screen";

  @override
  State<unsplash_screen> createState() => _unsplash_screenState();
}

class _unsplash_screenState extends State<unsplash_screen> {
  @override
 void initState() {
 super.initState();
 Timer(
    Duration(seconds: 4),
    () => Navigator.pushNamed(context, GetStarted.id));
 }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Image.asset("images/spotify.png", 
      height: 80,
      width: 266.52,
      // check the timer
      )),
    );
  }
}