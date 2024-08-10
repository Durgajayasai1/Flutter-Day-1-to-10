import 'package:flutter/material.dart';
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
        backgroundColor: const Color(0xff081422),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                // Text(
                //   "Profile",
                //   style: GoogleFonts.poppins(
                //       color: const Color(0xffbdf75c),
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                const Center(
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/dp.jpeg'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Elizabeth",
                  style: GoogleFonts.poppins(
                      color: Colors.grey[300],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Elizabeth7@gmail.com",
                  style: GoogleFonts.poppins(
                      color: Colors.grey[400],
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 170,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xffbdf75c),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Iconsax.edit,
                        color: Color(0xff081422),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Edit Profile",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff081422),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Info",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                ListTile(
                  leading: Icon(
                    Iconsax.user,
                    color: Colors.grey[400],
                  ),
                  title: Text(
                    "Elizabeth",
                    style: GoogleFonts.poppins(color: Colors.grey[400]),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Iconsax.mobile,
                    color: Colors.grey[400],
                  ),
                  title: Text(
                    "+0001345789",
                    style: GoogleFonts.poppins(color: Colors.grey[400]),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Iconsax.message,
                    color: Colors.grey[400],
                  ),
                  title: Text(
                    "Feedback",
                    style: GoogleFonts.poppins(color: Colors.grey[400]),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "General Settings",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(
                    Iconsax.setting,
                    color: Colors.grey[400],
                  ),
                  title: Text(
                    "Settings",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                  trailing: const Icon(
                    Iconsax.arrow_right,
                    color: Color(0xffbdf75c),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Iconsax.lock,
                    color: Colors.grey[400],
                  ),
                  title: Text(
                    "Change password",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                  trailing: const Icon(
                    Iconsax.arrow_right,
                    color: Color(0xffbdf75c),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Iconsax.gift,
                    color: Colors.grey[400],
                  ),
                  title: Text(
                    "Earn gifts",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                  trailing: const Icon(
                    Iconsax.arrow_right,
                    color: Color(0xffbdf75c),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  width: 150,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: const Color(0xffbdf75c),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Logout",
                      style: GoogleFonts.poppins(
                          color: const Color(0xff081422),
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
