import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.light, 
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context)=> LoginPage(),
        "/home": (context)=> HomePage(),
        "/login": (context)=> LoginPage(),
      },

    );
  }
}
