
// File: lib/screens/welcome_screen.dart
import 'package:flutter/material.dart';
import 'package:authapp/screens/login_screen.dart';
import 'package:authapp/screens/register_screen.dart';
import 'package:authapp/widgets/auth_button.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // Left panel - Welcome Section
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Person working on laptop illustration
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Image.asset(
                        'assets/images/working_person.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  // Text content
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Discover Your\nDream Job here',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Explore all the existing job roles based on your interest and study major',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Buttons
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: AuthButton(
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
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: AuthButton(
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Right panel - split into half for login and register
          Expanded(
            child: Container(
              color: Colors.grey[50],
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  LoginScreen(),
                  RegisterScreen(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}