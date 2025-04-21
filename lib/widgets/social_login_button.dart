
// File: lib/widgets/social_login_button.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLoginButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onPressed;

  const SocialLoginButton({
    Key? key,
    required this.iconPath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData iconData;
    
    // Determine which icon to use
    switch (iconPath) {
      case 'google':
        iconData = FontAwesomeIcons.google;
        break;
      case 'facebook':
        iconData = FontAwesomeIcons.facebook;
        break;
      case 'apple':
        iconData = FontAwesomeIcons.apple;
        break;
      default:
        iconData = FontAwesomeIcons.google;
    }

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Center(
          child: FaIcon(
            iconData,
            size: 20,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}