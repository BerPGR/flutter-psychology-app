import 'package:flutter/material.dart';
import 'package:psicology/screens/home_page.dart';
import 'colors/palette.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is a psichology app - Girlfriend's idea",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.flash_white,
        textTheme: GoogleFonts.titilliumWebTextTheme(),
      ),
      home: HomePage(),
    );
  }
}
