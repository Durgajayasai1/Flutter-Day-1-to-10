import 'package:flutter/material.dart';
import 'package:freelance_marketplace/components/terms_tile.dart';
import 'package:freelance_marketplace/components/work_exp.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color(0xffb8ed55),
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Iconsax.star,
                  color: Colors.black,
                )),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                      image: AssetImage('assets/Harry.jpg'))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        color: const Color(0xffb8ed55),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Harry",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "UI/UX Developer",
                  style: GoogleFonts.poppins(
                      color: Colors.grey[500], fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WorkExp(icon: Iconsax.star, text: "4.8"),
                WorkExp(icon: Iconsax.timer_1, text: "part-time"),
                WorkExp(icon: Iconsax.briefcase, text: "4+ years"),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Hello! I'm Harry, and I'm UI/UX Developer. I will be useful to you if you decide to hire me. Write to me and we will discuss the details.",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Read more",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(Iconsax.arrow_right_1),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: BoxDecoration(
                    color: const Color(0xffb8ed55),
                    borderRadius: BorderRadius.circular(100)),
                child: Text(
                  "Terms",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "Reviews",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const TermsTile(
              icon: Iconsax.dollar_square,
              text: "The freelancer works on 100% prepayment only"),
          const SizedBox(
            height: 10,
          ),
          const TermsTile(
              icon: Iconsax.receipt_edit,
              text: "The freelancer requests signing of the contract"),
          const SizedBox(
            height: 10,
          ),
          const TermsTile(
              icon: Iconsax.message_text,
              text: "Communication is carried out with our app only"),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/chat_screen');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffb8ed55),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Contact",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          )
        ],
      ))),
    );
  }
}
