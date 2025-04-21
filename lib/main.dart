import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:authapp/screens/welcome_screen.dart';
import 'package:authapp/screens/mobile_welcome_screen.dart';
import 'package:authapp/utils/responsive_layout.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Portal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2649C9),
          primary: const Color(0xFF2649C9),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        mobile: MobileWelcomeScreen(),
        tablet: WelcomeScreen(),
        desktop: WelcomeScreen(),
      ),
    );
  }
}