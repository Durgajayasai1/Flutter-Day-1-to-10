import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reel extends StatefulWidget {
  const Reel({Key? key}) : super(key: key);

  @override
  _ReelState createState() => _ReelState();
}

class _ReelState extends State<Reel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Reels",
        style: GoogleFonts.poppins(color: Colors.white),
      )),
    );
  }
}
