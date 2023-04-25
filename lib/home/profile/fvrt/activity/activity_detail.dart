import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../home_navbar.dart';
import '../../../hot_program/hot_program.dart';
import '../workout.dart';



void main() => runApp(Activity_detail());

class Activity_detail extends StatefulWidget {
  @override
  _Activity_detailState createState() => _Activity_detailState();
}

class _Activity_detailState extends State<Activity_detail> {
  late final double value;
  late final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => homeNavBar()));
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 2),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Calories",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "You have walked 40% of your goal",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Stack(
                alignment: Alignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        shape: BoxShape.circle
                      ),
                      child: CircularProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.grey,
                        color: Color.fromRGBO(255, 87, 87,30),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/walk.png",height: 30,width: 30,),
                        Text("Steps:",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 13,
                        ),),
                        Text("2,434",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ],
                ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          shape: BoxShape.circle
                      ),
                      child: CircularProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.grey,
                        color: Color.fromRGBO(255, 87, 87,30),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/clock.png",height: 30,width: 30,),
                        Text("Time:",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 13,
                        ),),
                        Text("30 Min",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          shape: BoxShape.circle
                      ),
                      child: CircularProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.grey,
                        color: Color.fromRGBO(255, 87, 87,30),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/navigate.png",height: 30,width: 30,),
                        Text("Distance:",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 13,
                        ),),
                        Text("3 Km",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          shape: BoxShape.circle
                      ),
                      child: CircularProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.grey,
                        color: Color.fromRGBO(255, 87, 87,30),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/fire.png",height: 30,width: 30,),
                        Text("Calories:",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 13,
                        ),),
                        Text("54 Kcal",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
