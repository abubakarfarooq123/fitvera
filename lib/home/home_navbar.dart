import 'package:fitvera/home/profile.dart';
import 'package:fitvera/home/receipy_book.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../gym/gym.dart';
import 'home.dart';


class homeNavBar extends StatefulWidget {
  const homeNavBar({Key? key}) : super(key: key);

  @override
  _homeNavBarState createState() => _homeNavBarState();
}

class _homeNavBarState extends State<homeNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getPage(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15),),
          color: Color.fromRGBO(29, 69, 100, 30),
        ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10,left: 3,right: 3),
            child: GNav(
              gap: 10,
              activeColor: Colors.white,
              color: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 500),
              tabBackgroundColor: Color.fromRGBO(255, 87, 87,30),
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.dumbbell,
                  text: 'Programs',
                ),
                GButton(
                  icon: LineIcons.utensils,
                  text: 'Recipe Book',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),

    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return Home();
      case 1:
        return Gym();
      case 2:
        return Receipy_Book();
      case 3:
        return Profile();
      default:
        return Center(child: Text('Page not found'));
    }
  }
}