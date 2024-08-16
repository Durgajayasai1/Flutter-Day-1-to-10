import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DeviceContainer extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const DeviceContainer(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle});

  @override
  State<DeviceContainer> createState() => DeviceContainerState();
}

class DeviceContainerState extends State<DeviceContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xff484547),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            color: Colors.white,
            size: 40,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.title,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.subtitle,
            style: GoogleFonts.poppins(color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const Icon(
                    Iconsax.wifi,
                    color: Colors.white,
                    size: 16,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Wi-Fi",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100)),
                  child: const FaIcon(
                    FontAwesomeIcons.powerOff,
                    color: Colors.white,
                    size: 10,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
