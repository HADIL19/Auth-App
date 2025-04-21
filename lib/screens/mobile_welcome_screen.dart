
// Create the mobile version of the screens for responsive design
// File: lib/screens/mobile_welcome_screen.dart
import 'package:flutter/material.dart';
import 'package:authapp/screens/login_screen.dart';
import 'package:authapp/screens/register_screen.dart';
import 'package:authapp/widgets/auth_button.dart';

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Center(
                  child: Image.asset(
                    'assets/images/working_person.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Discover Your\nDream Job here',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Explore all the existing job roles based on your interest and study major',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
  padding: const EdgeInsets.only(bottom: 30),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center, // Centers the buttons horizontally
    children: [
      AuthButton(
        text: 'Login',
        isPrimary: true,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        },
      ),
      const SizedBox(width: 10), // Space between the two buttons
      AuthButton(
        text: 'Register',
        isPrimary: false,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RegisterScreen(),
            ),
          );
        },
      ),
    ],
  ),
),

            
            ],
          ),
        ),
      ),
    );
  }
}