import 'package:fitvera/home/profile/edit_profile.dart';
import 'package:fitvera/home/profile/get_help.dart';
import 'package:fitvera/home/profile/notifications.dart';
import 'package:fitvera/home/profile/privacy_policy.dart';
import 'package:fitvera/home/profile/settings/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fvrt/favorite_workout.dart';

class Profile_detail extends StatefulWidget {
  const Profile_detail({Key? key}) : super(key: key);

  @override
  State<Profile_detail> createState() => _Profile_detailState();
}

class _Profile_detailState extends State<Profile_detail> {
  @override
  var name = '';
  String img = '';
  @override
  Widget build(BuildContext context) {
           SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: Colors.transparent, //top bar color
            systemNavigationBarColor: Colors.black, //bottom bar color
            systemNavigationBarIconBrightness: Brightness.dark,
          ));
          return Scaffold(
            backgroundColor: Color.fromRGBO(29, 69, 100, 30),
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              toolbarHeight: 180, // set the height of the app bar
               automaticallyImplyLeading: false, // hides the back arrow
    title: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/profile1.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("Billy James",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 220,
                        height: 10,
                        child: LinearProgressIndicator(
                          value: 0.4,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(255, 87, 87,30)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${(0.4 * 100).toInt()}% Profile Completed',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                          child:Padding(
                            padding: const EdgeInsets.only(left: 13,right: 13,top: 7),
                            child: Column(
                              children: [
                                Text(
                                    "Age",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                      fontSize: 11

                                    ),
                                  ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "22",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ],

                            ),
                          ),
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(left: 13,right: 13,top: 7),
                            child: Column(
                              children: [
                                Text(
                                  "Height",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 11

                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "168.1",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ],

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(left: 13,right: 13,top: 7),
                            child: Column(
                              children: [
                                Text(
                                  "Weight",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 11

                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "68",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
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
              ),
        ],
              ),
    ),
            ),
            body: ClipRRect(
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              ),
              child: Container(
                height: 800.0,
                width: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Edit_Profile()));
                          },
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 18,
                                  child: Icon(
                                      FontAwesomeIcons.solidUser,
                                      size: 25,
                                      color: Color.fromRGBO(29, 69, 100, 30),
                                    ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Positioned(
                                  left: 56,
                                  top: 18,
                                  child: Text(
                                      "Account",
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                ),
                                Positioned(
                                  left: 280,
                                  top: 10,
                                  child: Icon(Icons.arrow_right,
                                    size: 40,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Noti()));
                          },
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.2)
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 18,
                                  child: Icon(
                                    FontAwesomeIcons.solidBell,
                                    size: 25,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Positioned(
                                  left: 56,
                                  top: 18,
                                  child: Text(
                                    "Notifications",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 280,
                                  top: 10,
                                  child: Icon(Icons.arrow_right,
                                    size: 40,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Fvrt_workout()));
                          },
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.2)
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 18,
                                  child: Icon(
                                    FontAwesomeIcons.solidHeart,
                                    size: 25,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Positioned(
                                  left: 56,
                                  top: 18,
                                  child: Text(
                                    "Favorite",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 280,
                                  top: 10,
                                  child: Icon(Icons.arrow_right,
                                    size: 40,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Verification()));
                          },
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.2)
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 18,
                                  child: Icon(
                                    FontAwesomeIcons.solidBarChart,
                                    size: 25,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Positioned(
                                  left: 56,
                                  top: 18,
                                  child: Text(
                                    "Activity",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 280,
                                  top: 10,
                                  child: Icon(Icons.arrow_right,
                                    size: 40,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Verification()));
                          },
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.2)
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 18,
                                  child: Icon(
                                    FontAwesomeIcons.fantasyFlightGames,
                                    size: 25,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Positioned(
                                  left: 56,
                                  top: 18,
                                  child: Text(
                                    "Programs",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 280,
                                  top: 10,
                                  child: Icon(Icons.arrow_right,
                                    size: 40,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Get_Help()));

                          },
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.2)
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 18,
                                  child: Icon(
                                    FontAwesomeIcons.questionCircle,
                                    size: 25,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Positioned(
                                  left: 56,
                                  top: 18,
                                  child: Text(
                                    "Get Help",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 280,
                                  top: 10,
                                  child: Icon(Icons.arrow_right,
                                    size: 40,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Privacy_Policy()));
                          },
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.2)
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 18,
                                  child: Icon(
                                    Icons.privacy_tip_rounded,
                                    size: 25,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Positioned(
                                  left: 56,
                                  top: 18,
                                  child: Text(
                                    "Privacy Policy",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 280,
                                  top: 10,
                                  child: Icon(Icons.arrow_right,
                                    size: 40,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Verification()));
                          },
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.2)
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 18,
                                  child: Icon(
                                    Icons.watch,
                                    size: 25,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Positioned(
                                  left: 56,
                                  top: 18,
                                  child: Text(
                                    "Connect to Apple",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 280,
                                  top: 10,
                                  child: Icon(Icons.arrow_right,
                                    size: 40,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Settings()));
                          },
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.2)
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 18,
                                  child: Icon(
                                    Icons.settings,
                                    size: 25,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Positioned(
                                  left: 56,
                                  top: 18,
                                  child: Text(
                                    "Settings",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 280,
                                  top: 10,
                                  child: Icon(Icons.arrow_right,
                                    size: 40,
                                    color: Color.fromRGBO(29, 69, 100, 30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 18, top: 30, bottom: 15),
                        child: InkWell(
                          onTap: (){
                           },
                          child: Container(
                            height: 50,
                            width: 320,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 87, 87, 30),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "Logout",
                                style:
                                GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold

                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
  }
