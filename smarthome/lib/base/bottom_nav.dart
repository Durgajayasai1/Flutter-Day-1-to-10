import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smarthome/pages/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  int _selectedIndex=0;
  final List<Widget> _screens = <Widget>[
    const Home(),
  ];

  void onTap(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () => onTap(0), icon: const Icon(Iconsax.home, color: Colors.white,)),
            IconButton(onPressed: (){}, icon: const Icon(Iconsax.flash, color: Colors.white,)),
            Container(
              decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(100)),
              child: IconButton(onPressed: (){}, icon: const Icon(Iconsax.add, color: Colors.white,))),
            IconButton(onPressed: (){}, icon: const Icon(Iconsax.notification, color: Colors.white,)),
            IconButton(onPressed: (){}, icon: const Icon(Iconsax.profile_circle, color: Colors.white,)),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
    );
  }
}