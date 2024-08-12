import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard(
      {Key? key,
      required this.imagePath,
      required this.name,
      required this.role,
      required this.status,
      required this.ratePerHour})
      : super(key: key);

  final String imagePath;
  final String name;
  final String role;
  final String status;
  final double ratePerHour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/profile');
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(imagePath)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          role,
                          style: GoogleFonts.poppins(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: status == 'Online'
                                ? const Color(0xffb8ed55)
                                : Colors.grey,
                            width: 1.5),
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      status,
                      style: GoogleFonts.poppins(
                          color: status == 'Online'
                              ? Colors.black87
                              : Colors.grey),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Hello, I'm $name, and I'm $role. I will be useful to you if you decide to hire me. Write to me and we will discuss the details.",
              style: GoogleFonts.poppins(
                  color: Colors.black, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Text(
                        "\$$ratePerHour",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      Text(
                        "  /hour",
                        style: GoogleFonts.poppins(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                const Icon(
                  Iconsax.star,
                  color: Colors.black,
                  size: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
