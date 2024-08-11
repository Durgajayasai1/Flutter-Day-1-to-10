import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instagram_clone/pages/add.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/profile.dart';
import 'package:instagram_clone/pages/reel.dart';
import 'package:instagram_clone/pages/search.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = <Widget>[
    const Home(),
    const Search(),
    const Add(),
    const Reel(),
    const Profile(),
  ];

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
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
            IconButton(
                onPressed: () => onTap(0),
                icon: const Icon(
                  Iconsax.home,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () => onTap(1),
                icon: const Icon(
                  Iconsax.search_normal,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () => onTap(2),
                icon: const Icon(
                  Iconsax.add_square,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () => onTap(3),
                icon: const Icon(
                  Iconsax.video_play,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () => onTap(4),
                icon: const Icon(
                  Iconsax.user_octagon,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
    );
  }
}
