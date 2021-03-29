import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_shoes/pages/home_page.dart';
import 'package:my_shoes/widgets/detail_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(


        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.sofiaTextTheme(
          Theme.of(context).textTheme,
        )
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}



