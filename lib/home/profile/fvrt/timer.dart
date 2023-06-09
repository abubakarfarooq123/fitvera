import 'dart:async';
import 'package:fitvera/home/profile/fvrt/planner/planeer.dart';
import 'package:fitvera/home/profile/fvrt/workout_complete.dart';
import 'package:fitvera/home/profile/fvrt/workout_overview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home_navbar.dart';
import 'activity/activity_screen.dart';
enum MenuItem{
  item1,
  item2,
  item3,
  item4,
  item5,
  item6,
  item7,
}

void main() => runApp(StopwatchApp());

class StopwatchApp extends StatefulWidget {
  @override
  _StopwatchAppState createState() => _StopwatchAppState();
}

class _StopwatchAppState extends State<StopwatchApp> {
  late Stopwatch _stopwatch;
  late Timer _timer;
  late Duration _duration;
  double _progressValue = 0.0;
  double _progressAngle = 0.0;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _duration = Duration();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 30),
            child: Row(
              children: [
                InkWell(
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
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 5),
                  child: Text(
                    "Timer",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 95,
                ),
                PopupMenuButton<MenuItem>(
                  onSelected: (value){
                    if(value== MenuItem.item1){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Workout_Overview()));
                    }
                    if(value== MenuItem.item2){
                    }
                    if(value== MenuItem.item3){
                    }
                    if(value== MenuItem.item4){
                    }
                    if(value== MenuItem.item5){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Activity_Screen()));
                    }
                    if(value== MenuItem.item6){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Planner()));
                    }

                    if(value== MenuItem.item7){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Workout_complete()));
                    }
                  },
                  itemBuilder: (context)=>[
                    PopupMenuItem(
                      value: MenuItem.item1,
                      child:Text(
                        "Workout Overview",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16
                      ),
                      ),
                    ),
                    PopupMenuItem(
                      value: MenuItem.item2,
                      child:Text(
                        "Restart Circuit",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16
                      ),
                      ),

                    ),
                    PopupMenuItem(
                      value: MenuItem.item3,
                      child:Text(
                        "Next Circuit",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16
                      ),
                      ),

                    ),
                    PopupMenuItem(
                      value: MenuItem.item4,
                      child:Text(
                        "Resume Circuit",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16
                      ),
                      ),
                    ),
                    PopupMenuItem(
                      value: MenuItem.item5,
                      child:Text(
                        "Activity",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16
                      ),
                      ),
                    ),
                    PopupMenuItem(
                      value: MenuItem.item6,
                      child:Text(
                        "Planner",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16
                      ),
                      ),
                    ),
                    PopupMenuItem(
                      value: MenuItem.item7,
                      child:Text(
                        "End Workout",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16
                      ),
                      ),

                    ),

                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: InkWell(
              onTap: () {
              },
              child: Container(
                width: 320,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/leg.png"),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                    Positioned(
                      left: 90,
                      top: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Med Ball Slam",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 25,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "2 Rounds",
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(255, 87, 87, 30),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 25,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "10 Reps",
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(255, 87, 87, 30),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 260,
                      top: 12,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Container(
                            height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 87, 87,30),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child:Center(
                            child: Text("30",style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: 250.0,
              height: 250.0,
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    child: CircularProgressIndicator(
                      value: _progressValue,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation(Color.fromRGBO(255, 87, 87,30),),
                      strokeWidth: 10.0,
                    ),
                  ),
                  Center(
                    child: Text(
                      formatTime(_duration),
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.2)),
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Color.fromRGBO(255, 87, 87, 30),
                      size: 37,
                    ),
                  ),
                ),
                onTap: () {
                  if (!_stopwatch.isRunning) {
                    _timer =
                        Timer.periodic(Duration(milliseconds: 100), (timer) {
                      setState(() {
                        _duration = _stopwatch.elapsed;
                        _progressValue = _duration.inMilliseconds / 30000;
                        _progressAngle = (_progressValue * 360) % 360;
                      });
                    });
                    _stopwatch.start();
                  }
                },
              ),
              SizedBox(width: 20.0),
              InkWell(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.2)),
                  child: Center(
                    child: Icon(
                      Icons.stop,
                      color: Color.fromRGBO(255, 87, 87, 30),
                      size: 37,
                    ),
                  ),
                ),
                onTap: () {
                  if (_stopwatch.isRunning) {
                    _timer.cancel();
                    _stopwatch.stop();
                  }
                },
              ),
              SizedBox(width: 20.0),
              InkWell(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.2)
                  ),
                  child: Center(
                    child: Icon(
                      Icons.refresh_outlined,
                      color: Color.fromRGBO(255, 87, 87,30),
                      size: 37,
                    ),
                  ),
                ),
                onTap: () {
                  _timer.cancel();
                  _stopwatch.reset();
                  setState(() {
                    _duration = Duration();
                    _progressValue = 0.0;
                    _progressAngle = 0.0;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(30));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(30));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
