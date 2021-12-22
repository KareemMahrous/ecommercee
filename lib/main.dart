import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecommerce/view/screens/bottom_bar.dart';
import 'package:ecommerce/view/screens/signup_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        backgroundColor: Background,
        centered: true,
        splashIconSize: 150,
        splash: 'assets/images/trolley.png',
        nextScreen: SignUpScreen(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
      ),
      title: 'ecommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),

    );
  }
}

