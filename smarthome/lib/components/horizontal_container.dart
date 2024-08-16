import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalContainer extends StatefulWidget {
  final String title;
  final Color bgcolor;
  final Color color;
  const HorizontalContainer({super.key, required this.title, required this.bgcolor, required this.color});

  @override
  State<HorizontalContainer> createState() => HorizontalContainerState();
}

class HorizontalContainerState extends State<HorizontalContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: widget.bgcolor, borderRadius: BorderRadius.circular(20)),
        child: Text(
          widget.title,
          style: GoogleFonts.poppins(color: widget.color),
        ));
  }
}
