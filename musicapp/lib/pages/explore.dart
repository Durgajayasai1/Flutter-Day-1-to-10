import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => ExploreState();
}

class ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text section at the top
                Text(
                  "Trending Now",
                  style: GoogleFonts.poppins(
                    color: Colors.grey[300],
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Songs",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Popular Music || 30 Songs",
                  style: GoogleFonts.poppins(
                    color: Colors.grey[200],
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 10),

                // Icons section aligned to the right
                const Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Iconsax.music_filter, color: Colors.white, size: 30,),
                      SizedBox(width: 10),
                      Icon(Iconsax.repeate_music, color: Colors.white, size: 30,),
                      SizedBox(width: 10),
                      Icon(Iconsax.play, color: Colors.white, size: 30,),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(height: 20,),

                // ListView.builder section
                ListView.builder(
                  shrinkWrap: true,  // Prevent ListView from taking up infinite vertical space
                  physics: const NeverScrollableScrollPhysics(),  // Disable inner scrolling
                  itemCount: 20,
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
                          fontSize: 12,
                          color: Colors.grey[300],
                        ),
                      ),
                      trailing: SizedBox(
                        width: 80,  // To ensure the Row doesn't overflow
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,  // Align trailing items to the end
                          children: [
                            Text(
                              "3:45",
                              style: GoogleFonts.poppins(color: Colors.grey),
                            ),
                            const SizedBox(width: 20,),
                            const FaIcon(FontAwesomeIcons.ellipsisVertical, color: Colors.blue,)
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
      ),
    );
  }
}
