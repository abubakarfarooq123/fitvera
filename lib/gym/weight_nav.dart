import 'package:fitvera/gym/progress_picture.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_limitations.dart';
import 'bar_chart/bar_graph.dart';

class Weight_Nav extends StatefulWidget {
  const Weight_Nav({Key? key}) : super(key: key);

  @override
  State<Weight_Nav> createState() => _Weight_NavState();
}

class _Weight_NavState extends State<Weight_Nav> {
  List<double> weeklySummary =[
    4.40,
    2.50,
    12.42,
    10.50,
    20.20,
    28.99,
    60.0,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor:Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "Weight",style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 22,),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.info,color: Colors.white,size: 26,),
              onPressed: (){
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Text(
                "Current Weight",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,top:10),
              child: InkWell(
                onTap:(){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Progress_Picture()));
                },
                child: Container(
                  width: 320,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Image.asset("assets/images/www.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 110,
                        top: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "84 Kg",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 18
                            ),),

                          ],
                        ),
                      ),
                      Positioned(
                        left: 290,
                        top: 35,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_forward_ios_rounded,
                              color: Color.fromRGBO(255, 87, 87,30),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Text("Goal Weight",style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,top:10),
              child: InkWell(
                onTap:(){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Progress_Picture()));
                },
                child: Container(
                  width: 320,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Image.asset("assets/images/www.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 110,
                        top: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "74 Kg",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 18
                            ),),

                          ],
                        ),
                      ),
                      Positioned(
                        left: 290,
                        top: 35,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_forward_ios_rounded,
                              color: Color.fromRGBO(255, 87, 87,30),
                            ),

                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Text("Workout Tracking",style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight:FontWeight.bold,
                fontSize: 18,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,top: 20 ),
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
                        child: Text("Weekly",style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 87, 87,30),
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
                        child: Text("Daily",style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 87, 87,30),
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
                        child: Text("Monthly",style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 87, 87,30),
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
                        child: Text(
                          "Yearly",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Container(
                height: 300,
                width:320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Container(
                    height:280,
                    width: 300,
                    child: MyBarGraph(
                      weeklySummary: weeklySummary,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,top:10),
              child: InkWell(
                onTap:(){
                },
                child: Container(
                  width: 320,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Image.asset("assets/images/www.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 110,
                        top: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "70 Kg",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 18
                            ),),

                          ],
                        ),
                      ),
                      Positioned(
                        left: 230,
                        top: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "23 March, 2023",style: GoogleFonts.poppins(
                                color: Colors.grey.withOpacity(0.5),

                                fontSize: 12
                            ),),

                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,top:10),
              child: InkWell(
                onTap:(){
                },
                child: Container(
                  width: 320,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Image.asset("assets/images/www.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 110,
                        top: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "65 Kg",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 18
                            ),),

                          ],
                        ),
                      ),
                      Positioned(
                        left: 230,
                        top: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "23 March, 2023",style: GoogleFonts.poppins(
                                color: Colors.grey.withOpacity(0.5),

                                fontSize: 12
                            ),),

                          ],
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
