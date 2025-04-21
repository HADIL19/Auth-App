import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final bool isPrimary;
  final VoidCallback onPressed;

  const AuthButton({
    Key? key,
    required this.text,
    required this.isPrimary,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: isPrimary ? Colors.white : Theme.of(context).primaryColor,
        backgroundColor: isPrimary ? Theme.of(context).primaryColor : Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        elevation: isPrimary ? 3 : 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: isPrimary ? Colors.transparent : Theme.of(context).primaryColor,
            width: 1,
          ),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: isPrimary ? Colors.white : Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
