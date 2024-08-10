import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget prefixIcon;
  const MyTextfield(
      {Key? key,
      required this.hintText,
      required this.controller,
      required this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: GoogleFonts.poppins(color: Colors.grey[500]),
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(color: Colors.grey[500]),
          prefixIcon: prefixIcon,
        ));
  }
}
