import 'package:fitvera/home/profile.dart';
import 'package:fitvera/home/receipy_book.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'gym.dart';
import 'home.dart';


class homeNavBar extends StatefulWidget {
  const homeNavBar({Key? key}) : super(key: key);

  @override
  _homeNavBarState createState() => _homeNavBarState();
}

class _homeNavBarState extends State<homeNavBar> {
  bool? resizeToAvoidBottomInset;
  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    Gym(),
    Receipy_Book(),
    Profile(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: Color.fromRGBO(29, 69, 100, 30),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Home();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.home,
                          color: currentTab == 0
                              ?Color.fromRGBO(255, 87, 87,30)
                          : Colors.white,
                          size: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2,top: 5),
                          child: Text(
                            "Home",
                            style: GoogleFonts.roboto(
                                color: currentTab == 0
                                    ? Color.fromRGBO(255, 87, 87,30)
                                    : Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Gym();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.dumbbell,
                          color: currentTab == 1
                              ? Color.fromRGBO(255, 87, 87,30)
                              : Colors.white,
                          size: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 5),
                          child: Text(
                            "Program",
                            style: GoogleFonts.roboto(
                                color: currentTab == 1
                                    ? Color.fromRGBO(255, 87, 87,30)
                                    : Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Right Tab bar
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Receipy_Book();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.book,
                          color: currentTab == 3
                              ? Color.fromRGBO(255, 87, 87,30)
                              : Colors.white,
                          size: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2,top: 5),
                          child: Text(
                            "Recipe Book",
                            style: GoogleFonts.roboto(
                              color: currentTab == 3
                                  ? Color.fromRGBO(255, 87, 87,30)
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: currentTab == 4
                              ? Color.fromRGBO(255, 87, 87,30)
                              : Colors.white,
                          size: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2,top: 5),
                          child: Text(
                            "Profile",
                            style: GoogleFonts.roboto(
                                color: currentTab == 4
                                    ? Color.fromRGBO(255, 87, 87,30)
                                    : Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}