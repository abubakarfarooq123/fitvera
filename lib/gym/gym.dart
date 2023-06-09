import 'package:fitvera/home/notification.dart';
import 'package:fitvera/home/profile/about_you.dart';
import 'package:fitvera/gym/trainer.dart';
import 'package:fitvera/home/workouts/all_workouts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/hot_program/hot_program.dart';

class Gym extends StatefulWidget {
  const Gym({Key? key}) : super(key: key);

  @override
  State<Gym> createState() => _GymState();
}

class _GymState extends State<Gym> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: IconButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => About_you()));
                  },
                    icon: Icon(
                      Icons.category, size: 30,
                      color: Color.fromRGBO(29, 69, 100, 30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55, top: 10),
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 100,
                    width: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 26),
                  child: IconButton(onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => Notifications()));
                  },
                    icon: Icon(
                      Icons.notifications_on_sharp, size: 25,
                      color: Color.fromRGBO(29, 69, 100, 30),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/profile1.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good morning,", style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      ),
                      Text("Billy James", style: GoogleFonts.poppins(
                          color: Color.fromRGBO(29, 69, 100, 30),
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Container(
                height: 40,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search,color: Colors.grey,),
                      onPressed: () {
                        // Handle search button press
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Text(
                "All Programs",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Strength",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Hit",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Bare",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Yoga",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Muscle",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 15),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Trainer()));
                },
                child: Container(
                  height: 270,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 200,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/pull.jpg",),
                        )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 20),
                              child: Container(
                                height: 30,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 87, 87,30),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text("Home Base Challenge",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 10
                                  ),),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 90),
                              child: Text("Hot Body",style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text("New Year",style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Text("Challenge",style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(255, 87, 87,30),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 280,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                                "3-4 Sessions per Week | 45-60 Mins",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14
                              ),
                            ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}