import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LikedSongs extends StatefulWidget {
  const LikedSongs({super.key});

  @override
  State<LikedSongs> createState() => LikedSongsState();
}

class LikedSongsState extends State<LikedSongs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Title
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Liked Songs",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // ListView.builder section
              ListView.builder(
                shrinkWrap: true, // Prevents ListView from taking up infinite vertical space
                physics: const NeverScrollableScrollPhysics(), // Disables ListView's scrolling
                itemCount: 30,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/tscott.png'),
                    ),
                    title: Text(
                      "FE!N",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Travis Scott",
                      style: GoogleFonts.poppins(
                        color: Colors.grey[300],
                      ),
                    ),
                    trailing: const SizedBox(
                      width: 80, // Ensures the Row doesn't overflow
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end, // Align trailing items to the end
                        children: [
                           Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                           SizedBox(width: 20),
                          FaIcon(
                            FontAwesomeIcons.ellipsisVertical,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
