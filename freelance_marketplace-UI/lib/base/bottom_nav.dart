import 'package:flutter/material.dart';
import 'package:freelance_marketplace/components/decorated_icon_button.dart';
import 'package:freelance_marketplace/pages/chats.dart';
import 'package:freelance_marketplace/pages/people.dart';
import 'package:freelance_marketplace/pages/starred.dart';
import 'package:freelance_marketplace/pages/work.dart';
import 'package:iconsax/iconsax.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = <Widget>[
    const People(),
    const Work(),
    const Starred(),
    const Chats(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 30,
              offset: Offset(0, 20),
            ),
          ],
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: BottomAppBar(
              color: Colors.black,
              shape: const CircularNotchedRectangle(),
              notchMargin: 6.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DecoratedIconButton(
                    iconData: Iconsax.user,
                    isSelected: _selectedIndex == 0,
                    onTap: () => _onItemTapped(0),
                  ),
                  DecoratedIconButton(
                    iconData: Iconsax.briefcase,
                    isSelected: _selectedIndex == 1,
                    onTap: () => _onItemTapped(1),
                  ),
                  DecoratedIconButton(
                    iconData: Iconsax.star,
                    isSelected: _selectedIndex == 2,
                    onTap: () => _onItemTapped(2),
                  ),
                  DecoratedIconButton(
                    iconData: Iconsax.sms,
                    isSelected: _selectedIndex == 3,
                    onTap: () => _onItemTapped(3),
                  ),
                ],
              ),
            )),
      ),
      body: _screens[_selectedIndex],
    );
  }
}
