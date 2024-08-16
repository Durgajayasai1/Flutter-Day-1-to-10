import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowCont extends StatelessWidget {
  final Color color;
  final String text;
  const RowCont({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Center(child: Text(text, style: GoogleFonts.poppins(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),)),
        ),
      ],
    );
  }
}
