import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Instagram",
          style: TextStyle(
              fontFamily: 'Instagram', color: Colors.white, fontSize: 30),
        ),
        actions: const [
          Icon(
            Iconsax.heart,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: FaIcon(
              FontAwesomeIcons.facebookMessenger,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.grey, width: 5)),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[700],
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Iconsax.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.pink, width: 5)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.pink, width: 5)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.pink, width: 5)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.pink, width: 5)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user.jpg'),
                ),
                title: Text(
                  "Phillips",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                subtitle: Row(
                  children: [
                    const Icon(
                      Iconsax.music,
                      size: 14,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Phillips . Original Audio",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ],
                ),
                trailing: const FaIcon(
                  FontAwesomeIcons.ellipsisVertical,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(color: Colors.grey[600]),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FaIcon(
                          FontAwesomeIcons.comment,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Iconsax.send_2,
                          color: Colors.white,
                        )
                      ],
                    ),
                    FaIcon(
                      FontAwesomeIcons.bookmark,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "983 likes",
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        "Phillips",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Hello, FlutterFam",
                        style: GoogleFonts.poppins(color: Colors.grey[200]),
                      ),
                      Text(
                        "... more",
                        style: GoogleFonts.poppins(color: Colors.grey[400]),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "View all 29 comments",
                    style: GoogleFonts.poppins(color: Colors.grey[400]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "John",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Hey, hi. How are you?",
                          style: GoogleFonts.poppins(
                              color: Colors.grey[400], fontSize: 13),
                        ),
                      ],
                    ),
                    const Icon(
                      Iconsax.heart,
                      color: Colors.white,
                      size: 13,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Alexa",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Hello!!",
                          style: GoogleFonts.poppins(
                              color: Colors.grey[400], fontSize: 13),
                        ),
                      ],
                    ),
                    const Icon(
                      Iconsax.heart,
                      color: Colors.white,
                      size: 13,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
