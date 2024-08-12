import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Work",
          style: GoogleFonts.poppins(color: Colors.black),
        ),
      ),
    );
  }
}
