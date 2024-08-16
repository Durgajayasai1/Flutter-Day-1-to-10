import 'package:farmapp/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {

  int _selectedIndex=0;

  final List<Widget> _screens = const [
    Home(),
  ];

  void onTap(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () => onTap(0), icon: const Icon(Iconsax.home, color: Colors.black,)),
            IconButton(onPressed: (){}, icon: const Icon(Iconsax.cloud_sunny, color: Colors.black,)),
            IconButton(onPressed: (){}, icon: const Icon(Iconsax.message_text, color: Colors.black,)),
            IconButton(onPressed: (){}, icon: const Icon(Iconsax.profile_circle, color: Colors.black,)),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
    );
  }
}