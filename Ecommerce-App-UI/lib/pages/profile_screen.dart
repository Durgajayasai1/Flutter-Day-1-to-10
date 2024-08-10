import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xff081422).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                            image: AssetImage('assets/jack.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Jack",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Iconsax.location,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Eluru",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Iconsax.user_tag),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "jack@gmail.com",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "General Settings",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: const Color(0xff081422).withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Iconsax.setting_2,
                    color: Color(0xff081422),
                  ),
                  title: Text(
                    "Settings",
                    style: GoogleFonts.poppins(color: const Color(0xff081422)),
                  ),
                  trailing: const Icon(
                    Iconsax.arrow_right,
                    color: Color(0xffd1341f),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Iconsax.lock_1,
                    color: Color(0xff081422),
                  ),
                  title: Text(
                    "Change Password",
                    style: GoogleFonts.poppins(color: const Color(0xff081422)),
                  ),
                  trailing: const Icon(
                    Iconsax.arrow_right,
                    color: Color(0xffd1341f),
                  ),
                ),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.google,
                    color: Color(0xff081422),
                  ),
                  title: Text(
                    "Connect with Google",
                    style: GoogleFonts.poppins(color: const Color(0xff081422)),
                  ),
                  trailing: const Icon(
                    Iconsax.arrow_right,
                    color: Color(0xffd1341f),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: const Color(0xff081422).withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              title: Text(
                "Logout",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
              ),
              trailing: const Icon(
                Iconsax.logout_1,
                color: Color(0xff081422),
              ),
            ),
          )
        ],
      ),
    );
  }
}
