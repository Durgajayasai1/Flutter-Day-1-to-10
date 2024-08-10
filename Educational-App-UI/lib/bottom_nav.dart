import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui/pages/explore_screen.dart';
import 'package:ui/pages/home_screen.dart';
import 'package:ui/pages/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    ExploreScreen(),
    const ProfileScreen(),
  ];

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff081422),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff081422),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.search_normal,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.user,
              ),
              label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xffbdf75c),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: GoogleFonts.poppins(),
        selectedFontSize: 15,
        onTap: onTap,
      ),
      body: _screens[_selectedIndex],
    );
  }
}
