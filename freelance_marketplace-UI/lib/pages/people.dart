import 'package:flutter/material.dart';
import 'package:freelance_marketplace/components/user_profile_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class People extends StatefulWidget {
  const People({Key? key}) : super(key: key);

  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Iconsax.notification,
                      color: Colors.black,
                      size: 30,
                    ),
                    Text(
                      "FreeLanceForge",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    const Icon(
                      Iconsax.menu_1,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            const Icon(
                              Iconsax.search_normal,
                              color: Colors.black,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Search...",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xffb8ed55),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Iconsax.setting_4,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Column(
                children: [
                  UserProfileCard(
                    imagePath: 'assets/Alexa.jpg',
                    name: 'Alexa',
                    role: 'CopyWriter',
                    status: 'Online',
                    ratePerHour: 12,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  UserProfileCard(
                    imagePath: 'assets/Harry.jpg',
                    name: 'Harry',
                    role: 'UI/UX Developer',
                    status: 'Offline',
                    ratePerHour: 24,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  UserProfileCard(
                    imagePath: 'assets/Sandra.jpg',
                    name: 'Sandra',
                    role: 'Figma Designer',
                    status: 'Online',
                    ratePerHour: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
