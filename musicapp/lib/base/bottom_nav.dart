import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:musicapp/pages/explore.dart';
import 'package:musicapp/pages/home.dart';
import 'package:musicapp/pages/liked_songs.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  int _selectedIndex=0;
  final List<Widget> _screens = <Widget> [
    const Home(),
    const Explore(),
    const LikedSongs(),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () => onTap(0), icon: const Icon(Iconsax.home_2, color: Colors.white,)),
            IconButton(onPressed: () => onTap(1), icon: const Icon(Iconsax.search_normal, color: Colors.white,)),
            IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.podcast, color: Colors.white,)),
            IconButton(onPressed: () => onTap(2), icon: const Icon(Iconsax.heart, color: Colors.white,)),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
    );
  }
}