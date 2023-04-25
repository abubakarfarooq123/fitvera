import 'package:fitvera/home/hot_program/payment_gateway.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class Hot_program extends StatefulWidget {
  const Hot_program({Key? key}) : super(key: key);

  @override
  State<Hot_program> createState() => _Hot_programState();
}

class _Hot_programState extends State<Hot_program> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 360,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/aq1.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 170),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          size: 34,
                          color: Color.fromRGBO(255, 87, 87,30),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Home Based Challenge",
                            style: GoogleFonts.poppins(
                                color: Colors.black, fontSize: 9.5,
                            fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Text(
                        "Hot Body",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "New Year",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16
                            ),
                          ),
                          Text(
                            " Challenge.",
                            style: GoogleFonts.poppins(
                                color: Color.fromRGBO(255, 87, 87, 30),
                                fontWeight: FontWeight.bold,
                            fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Icon(
                            FontAwesomeIcons.stopwatch,
                            color: Colors.green,
                            size: 36,
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,top: 5),
                      child: Text("30-40 Mins",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.bold

                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text("Workout",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w900

                      ),),
                    ),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.calendar,
                          color: Color.fromRGBO(255, 87, 87,30),
                          size: 36,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 5),
                      child: Text("4-6 Days",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.bold

                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Text("Per Week",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w900

                      ),),
                    ),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.dumbbell,
                          color: Colors.blue,
                          size: 36,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12,top: 5),
                      child: Text("Full Body",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.bold

                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Focus",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w900

                      ),),
                    ),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.weightHanging,
                          color: Colors.deepPurple,
                          size: 36,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25,top: 5),
                      child: Text("Home",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.bold

                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: Text("Based",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w900

                      ),),
                    ),

                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20),
              child: Text("Program Overview:",style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,top: 10,right: 5),
              child: Text("Debitis dolores earum qui aliquid neque iure at. Deserunt nobis ea reprehenderit. Nobis tempore illum neque tenetur similique consectetur accusantium molestiae sed. Et voluptatem voluptate nobis doloremque consequuntur blanditiis aut quam et. Sed dolor et autem voluptatibus minima et eligendi ducimus.",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 18, top: 80, bottom: 10),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Payment_gateway()));
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
                      "Start Program",
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
    );
  }
}
