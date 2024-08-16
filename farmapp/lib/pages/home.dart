import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/farmer.jpg'),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ramaiah",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "farmer",
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Iconsax.search_normal, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Iconsax.notification, color: Colors.black),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Today's Weather",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chennai, 15 Aug 2024",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "28 degrees",
                          style: GoogleFonts.poppins(
                            color: Colors.grey[300],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          width: 80,
                          height: 80,
                          'assets/sunny.png'),
                          Text("Sunny", style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(color: const Color.fromARGB(77, 64, 195, 255), borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.asset('assets/3d-target.png')),
                      ),
                      const SizedBox(width: 10,),
                        Row(
                          children: [
                            Text("Total demand ", style: GoogleFonts.poppins(color: Colors.black),),
                            Text("4,450 product", style: GoogleFonts.poppins(color: Colors.blue, fontWeight: FontWeight.bold),),
                          ],
                        )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("Commodities and Food", style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50, 
                    height: 50,
                    padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(77, 64, 195, 255),
                    borderRadius: BorderRadius.circular(10)
                    ),
                  child: Image.asset('assets/chick.png'),
                  ),
                  Container(
                    width: 50, 
                    height: 50,
                    padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(77, 64, 195, 255),
                    borderRadius: BorderRadius.circular(10)
                    ),
                  child: Image.asset('assets/rice.png'),
                  ),
                  Container(
                    width: 50, 
                    height: 50,
                    padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(77, 64, 195, 255),
                    borderRadius: BorderRadius.circular(10)
                    ),
                  child: Image.asset('assets/corn.png'),
                  ),
                  Container(
                    width: 50, 
                    height: 50,
                    padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(77, 64, 195, 255),
                    borderRadius: BorderRadius.circular(10)
                    ),
                  child: const Icon(Iconsax.category, color: Colors.black,),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              ListTile(
                leading: const CircleAvatar(backgroundImage: AssetImage('assets/com_1.jpg'),),
                title: Text("Farming Community", style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.bold),),
                subtitle: Text("Public Group", style: GoogleFonts.poppins(color: Colors.grey),),
                trailing: const Icon(Iconsax.message, color: Colors.grey,),
              ),
              ListTile(
                leading: const CircleAvatar(backgroundImage: AssetImage('assets/com_2.jpg'),),
                title: Text("Agriculture Community", style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.bold),),
                subtitle: Text("Public Group", style: GoogleFonts.poppins(color: Colors.grey),),
                trailing: const Icon(Iconsax.message, color: Colors.grey,),
              ),
              ListTile(
                leading: const CircleAvatar(backgroundImage: AssetImage('assets/com_2.jpg'),),
                title: Text("Aquaculture Community", style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.bold),),
                subtitle: Text("Public Group", style: GoogleFonts.poppins(color: Colors.grey),),
                trailing: const Icon(Iconsax.message, color: Colors.grey,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
