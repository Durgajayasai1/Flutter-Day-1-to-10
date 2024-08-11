import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Add",
        style: GoogleFonts.poppins(color: Colors.white),
      )),
    );
  }
}
