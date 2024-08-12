import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Starred extends StatefulWidget {
  const Starred({Key? key}) : super(key: key);

  @override
  _StarredState createState() => _StarredState();
}

class _StarredState extends State<Starred> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Starred",
          style: GoogleFonts.poppins(color: Colors.black),
        ),
      ),
    );
  }
}
