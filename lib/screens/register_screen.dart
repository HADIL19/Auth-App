
// File: lib/screens/register_screen.dart
import 'package:flutter/material.dart';
import 'package:authapp/widgets/auth_button.dart';
import 'package:authapp/widgets/social_login_button.dart';
import 'package:authapp/widgets/custom_text_field.dart';
import 'package:authapp/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Register header
              Text(
                'Create Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Create an account so you can explore all the existing jobs',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 40),

              // Email field
              const CustomTextField(
                hintText: 'Email',
                isPassword: false,
              ),
              const SizedBox(height: 16),

              // Password field
              const CustomTextField(
                hintText: 'Password',
                isPassword: true,
              ),
              const SizedBox(height: 16),

              // Confirm Password field
              const CustomTextField(
                hintText: 'Confirm Password',
                isPassword: true,
              ),
              const SizedBox(height: 40),

              // Sign up button
              AuthButton(
                text: 'Sign up',
                isPrimary: true,
                onPressed: () {},
              ),
              const SizedBox(height: 20),

              // Already have account
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Already have an account',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Or continue with
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 20),

              // Social login buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialLoginButton(
                    iconPath: 'google',
                    onPressed: () {},
                  ),
                  const SizedBox(width: 16),
                  SocialLoginButton(
                    iconPath: 'facebook',
                    onPressed: () {},
                  ),
                  const SizedBox(width: 16),
                  SocialLoginButton(
                    iconPath: 'apple',
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}