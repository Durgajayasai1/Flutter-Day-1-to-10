import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff081422),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                trailing: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xffbdf75c),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Icon(
                    Iconsax.category,
                    color: Color(0xff081422),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, Eliza",
                      style: GoogleFonts.poppins(
                          color: const Color(0xffbdf75c), fontSize: 26),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "My Courses",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff081422),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color(0xffbdf75c),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text(
                              "Completed (65%)",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xff081422)),
                            ),
                            Text(
                              "Flutter",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xff081422)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text(
                              "People Rating",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xff081422)),
                            ),
                            Text(
                              "⭐ 8.9",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xff081422)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color(0xffbdf75c),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text(
                              "Advanced level",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xff081422)),
                            ),
                            const Icon(
                              Iconsax.crown,
                              color: Color(0xff081422),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: const Icon(
                        Iconsax.user,
                        color: Color(0xffbdf75c),
                      ),
                      title: Text(
                        "Murphy",
                        style:
                            GoogleFonts.poppins(color: const Color(0xffbdf75c)),
                      ),
                      subtitle: Text(
                        "Tutor",
                        style: GoogleFonts.poppins(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      "Flutter Beginner Course",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lessons 30+",
                            style: GoogleFonts.poppins(
                                color: const Color(0xffbdf75c)),
                          ),
                          Text(
                            "Rating 8.9",
                            style: GoogleFonts.poppins(color: Colors.grey[400]),
                          ),
                          Text(
                            "Started - 10.08",
                            style: GoogleFonts.poppins(
                                color: const Color(0xffbdf75c)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: const Icon(
                        Iconsax.user,
                        color: Color(0xffbdf75c),
                      ),
                      title: Text(
                        "Morgan Willis",
                        style:
                            GoogleFonts.poppins(color: const Color(0xffbdf75c)),
                      ),
                      subtitle: Text(
                        "Tutor",
                        style: GoogleFonts.poppins(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      "AWS Cloud Practioner",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lessons 13+",
                            style: GoogleFonts.poppins(
                                color: const Color(0xffbdf75c)),
                          ),
                          Text(
                            "Rating 9.2",
                            style: GoogleFonts.poppins(color: Colors.grey[400]),
                          ),
                          Text(
                            "Started - 08.07",
                            style: GoogleFonts.poppins(
                                color: const Color(0xffbdf75c)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: const Icon(
                        Iconsax.user,
                        color: Color(0xffbdf75c),
                      ),
                      title: Text(
                        "Mosh Programming",
                        style:
                            GoogleFonts.poppins(color: const Color(0xffbdf75c)),
                      ),
                      subtitle: Text(
                        "Tutor",
                        style: GoogleFonts.poppins(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      "React Native Advanced Course",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lessons 18+",
                            style: GoogleFonts.poppins(
                                color: const Color(0xffbdf75c)),
                          ),
                          Text(
                            "Rating 9.0",
                            style: GoogleFonts.poppins(color: Colors.grey[400]),
                          ),
                          Text(
                            "Started - 07.08",
                            style: GoogleFonts.poppins(
                                color: const Color(0xffbdf75c)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
