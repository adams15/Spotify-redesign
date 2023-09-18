import 'package:flutter/material.dart';
import 'package:spotify/Lyrics.dart';
import 'package:spotify/article_page.dart';
import 'package:spotify/history.dart';
import 'package:spotify/home_page.dart';
import 'package:spotify/music_page.dart';
import 'package:spotify/onboarding_screen/continue_screen.dart';
import 'package:spotify/onboarding_screen/getStarted_screen.dart';
import 'package:spotify/onboarding_screen/login_page.dart';
import 'package:spotify/onboarding_screen/register_page.dart';
import 'package:spotify/onboarding_screen/signUp_page.dart';
import 'package:spotify/onboarding_screen/unsplash_screen.dart';
import 'package:spotify/playlist.dart';
import 'package:spotify/profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      //home: unsplash_screen(),
      initialRoute: Continue_screen.id,
      routes: {
      unsplash_screen.id:(context)=> const unsplash_screen(),
      GetStarted.id:(context) => const GetStarted(),
      Continue_screen.id:(context)=> const Continue_screen(),
      SignUp.id:(context) => const SignUp(),
      Login.id:(context) => const Login(),
      Register.id:(context) =>  Register(),
      HomePage.id:(context)=> const HomePage(),
      Playlist.id:(context)=> const Playlist(),
      History.id:(context) => const History(),
      Profile.id:(context) => const Profile(),
      MusicPage.id:(context) => const MusicPage(),
      Lyrics.id:(context) =>  const Lyrics(),
      Article.id:(context) => const Article(),
      },
    );
  }
}