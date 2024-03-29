import 'package:clouds/SkyWithClouds.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: GoogleFonts.tajawalTextTheme(
                Theme.of(context).textTheme,
              ),
            ),
            home: SkyWithClouds()
        );
  }
}
