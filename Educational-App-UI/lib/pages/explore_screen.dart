import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui/components/my_textfield.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final TextEditingController textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff081422),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: MyTextfield(
                  hintText: 'Explore',
                  controller: textcontroller,
                  prefixIcon: Icon(
                    Iconsax.search_normal,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      color: const Color(0xffbdf75c),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Intro to Flutter",
                          style: GoogleFonts.poppins(
                              color: const Color(0xff081442),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "10th August",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xff081442),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "5:40 PM",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xff081442),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                              color: const Color(0xff081442),
                              borderRadius: BorderRadius.circular(12)),
                          child: ListTile(
                            leading: Icon(
                              Iconsax.book_square,
                              color: Colors.grey[300],
                            ),
                            title: Text(
                              "Register now",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey[300], fontSize: 16),
                            ),
                            trailing: Icon(
                              Iconsax.arrow_right,
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Users",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[300],
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.poppins(
                          color: const Color(0xffbdf75c),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 13),
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/roy.jpg'),
                  ),
                  title: Text(
                    "Roy singh",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xff081422),
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    "Student",
                    style: GoogleFonts.poppins(color: const Color(0xff081422)),
                  ),
                  trailing: const Icon(
                    Iconsax.arrow_right,
                    color: Color(0xff081422),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 13),
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/zoya.jpg'),
                  ),
                  title: Text(
                    "Zoya",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xff081422),
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    "Student",
                    style: GoogleFonts.poppins(color: const Color(0xff081422)),
                  ),
                  trailing: const Icon(
                    Iconsax.arrow_right,
                    color: Color(0xff081422),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 13),
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/jenna.jpg'),
                  ),
                  title: Text(
                    "Jenna",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xff081422),
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    "Student",
                    style: GoogleFonts.poppins(color: const Color(0xff081422)),
                  ),
                  trailing: const Icon(
                    Iconsax.arrow_right,
                    color: Color(0xff081422),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 13),
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/stark.jpg'),
                  ),
                  title: Text(
                    "Stark",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xff081422),
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    "Entrepreneur",
                    style: GoogleFonts.poppins(color: const Color(0xff081422)),
                  ),
                  trailing: const Icon(
                    Iconsax.arrow_right,
                    color: Color(0xff081422),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 13),
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/rob.jpg'),
                  ),
                  title: Text(
                    "Rob",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xff081422),
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    "Student",
                    style: GoogleFonts.poppins(color: const Color(0xff081422)),
                  ),
                  trailing: const Icon(
                    Iconsax.arrow_right,
                    color: Color(0xff081422),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
