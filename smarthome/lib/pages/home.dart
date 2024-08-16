import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smarthome/components/device_container.dart';
import 'package:smarthome/components/horizontal_container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/user.jpg'),
                ),
                title: Text(
                  "Hello, Albert",
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "12 devices on",
                  style: GoogleFonts.poppins(color: Colors.grey),
                ),
                trailing: const FaIcon(
                  FontAwesomeIcons.robot,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      color: const Color(0xff484547),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hyderabad, India",
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                            Text(
                              "Sunny",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              "28° Celsius",
                              style: GoogleFonts.poppins(color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset('assets/sunny.png'))
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HorizontalContainer(
                      title: 'Living Room (4)',
                      bgcolor: Colors.blue,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    HorizontalContainer(
                      title: 'Kitchen',
                      bgcolor: Colors.white,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    HorizontalContainer(
                      title: 'Bedroom',
                      bgcolor: Colors.white,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DeviceContainer(
                      icon: Iconsax.lamp_1,
                      title: 'SmartLamp',
                      subtitle: 'Bardi SmartLamp'),
                  DeviceContainer(
                      icon: Iconsax.speaker,
                      title: 'Speaker',
                      subtitle: '4 Devices'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DeviceContainer(
                      icon: Icons.ac_unit,
                      title: 'Air Conditioner',
                      subtitle: '2 Devices'),
                  DeviceContainer(
                      icon: Iconsax.monitor,
                      title: 'SmartTV',
                      subtitle: '1 Device'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
