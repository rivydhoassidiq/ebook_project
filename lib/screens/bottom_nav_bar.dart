import 'package:ebook_project/cart/cart.dart';
import 'package:ebook_project/home/home.dart';
import 'package:ebook_project/save/save.dart';
import 'package:ebook_project/theme.dart';
import 'package:ebook_project/user/user.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _screens = [
    const HomePage(),
    const SavePage(),
    const CartPage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 76),
              child: Image.asset(
                'assets/icons/home.png',
                width: 20,
                height: 20,
                color: _selectedIndex == 0 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Image.asset(
                'assets/icons/saved.png',
                width: 14,
                height: 18,
                color: _selectedIndex == 1 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(right: 50),
              child: Image.asset(
                'assets/icons/cart.png',
                width: 20,
                height: 15,
                color: _selectedIndex == 2 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(right: 77),
              child: Image.asset(
                'assets/icons/profileicon.png',
                width: 18,
                height: 20,
                color: _selectedIndex == 3 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: Stack(
        children: _screens
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: _selectedIndex != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
    );
  }
}
