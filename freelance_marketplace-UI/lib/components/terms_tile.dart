import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsTile extends StatelessWidget {
  final IconData icon;
  final String text;
  const TermsTile({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
        size: 28,
      ),
      title: Text(
        text,
        style: GoogleFonts.poppins(fontSize: 14),
      ),
    );
  }
}
