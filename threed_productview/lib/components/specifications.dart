import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Specifications extends StatelessWidget {
  final IconData icon;
  final String text;
  const Specifications({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.yellow,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: GoogleFonts.poppins(color: Colors.white),
          )
        ],
      ),
    );
  }
}
