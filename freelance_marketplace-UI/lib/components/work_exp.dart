import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkExp extends StatelessWidget {
  final IconData icon;
  final String text;
  const WorkExp({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: const Color(0xffb8ed55).withOpacity(0.5),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 18,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
