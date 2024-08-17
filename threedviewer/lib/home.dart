import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:o3d/o3d.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

O3DController controller = O3DController();

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.red,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(alignment: Alignment.bottomCenter, children: [
        O3D.asset(
          controller: controller,
          src: 'assets/raistar.glb',
          cameraControls: false,
        ),
        const SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [],
        )),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {
                          controller.cameraControls = true;
                        },
                        child: const Icon(Iconsax.d_rotate),
                      ),
                      Align(
                        child: Text(
                          "created by Insane",
                          style: GoogleFonts.satisfy(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Divider(color: Colors.grey[300],),
                      ),
                      ListTile(
                        leading: const Icon(Iconsax.gameboy, color: Colors.white, size: 25,),
                        title: Text("FREE FIRE", style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold),),
                        subtitle: Text("Garena", style: GoogleFonts.poppins(color: Colors.grey[300]),),
                        trailing: const Icon(Iconsax.direct_right, color: Colors.white,),
                      ),
                      ListTile(
                        leading: const Icon(Iconsax.user, color: Colors.white, size: 25,),
                        title: Text("RaiStar", style: GoogleFonts.pacifico(color: Colors.white, fontWeight: FontWeight.bold),),
                        subtitle: Text("ID: 12022250", style: GoogleFonts.poppins(color: Colors.grey[300]),),
                        trailing: const Icon(Iconsax.direct_right, color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ]),
    ));
  }
}
