import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Measurement extends StatefulWidget {
  const Measurement({Key? key}) : super(key: key);

  @override
  State<Measurement> createState() => _MeasurementState();
}

class _MeasurementState extends State<Measurement>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor:Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "Circumference \nMeasurements",style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold
          ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 22,),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.info,
                color: Colors.white,
                size: 26,),
              onPressed: () {
                showDialog(context: context,
                    builder: (context){
                      return showPhotoAlert();

                    });
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                        child: Text(
                          "Waist",
                          style: GoogleFonts.poppins(
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
                          "Hip",
                          style: GoogleFonts.poppins(
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
                          "Chest",
                          style: GoogleFonts.poppins(
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
                          "Thigh",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),
                        ),
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
                          "Both Arm",
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
            SizedBox(
              height: 20,
            ),
            Center(child: Image.asset("assets/images/shade.png"),),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 20),
              child: Container(
                  height: 65,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey,width: 2),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 2),
                        child: Text(
                          "Week 1:",
                          style: GoogleFonts.poppins(
                            color: Colors.grey.withOpacity(0.6),
                            fontSize: 14,
                          ),),
                      ),
                      SizedBox(
                        height:5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("77 CM",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                      ),
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 20),
              child: Container(
                  height: 65,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey,width: 2),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 2),
                        child: Text(
                          "Week 2",
                          style: GoogleFonts.poppins(
                            color: Colors.grey.withOpacity(0.6),
                            fontSize: 14,
                          ),),
                      ),
                      SizedBox(
                        height:5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                      ),
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 20),
              child: Container(
                  height: 65,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey,width: 2),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 2),
                        child: Text(
                          "Week 3",
                          style: GoogleFonts.poppins(
                            color: Colors.grey.withOpacity(0.6),
                            fontSize: 14,
                          ),),
                      ),
                      SizedBox(
                        height:5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                      ),
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 20),
              child: Container(
                  height: 65,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey,width: 2),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 2),
                        child: Text(
                          "Week 4",
                          style: GoogleFonts.poppins(
                            color: Colors.grey.withOpacity(0.6),
                            fontSize: 14,
                          ),),
                      ),
                      SizedBox(
                        height:5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                      ),
                    ],
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 10),
              child: InkWell(
                onTap: (){
                },
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 87, 87, 30),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Save",
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
  Widget showPhotoAlert() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text("How to measure",style: GoogleFonts.poppins(
                    color: Color.fromRGBO(255, 87, 87,30),
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20 ),
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
                        child: Text(
                          "Measure",
                          style: GoogleFonts.poppins(
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
                          "Goals",
                          style: GoogleFonts.poppins(
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
                        child: Text("Limitations",style: GoogleFonts.poppins(
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
                          "Weight",
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
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width: 320,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Image.asset("assets/images/ii.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Weight:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
                          Text(
                            "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12
                          ),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width: 320,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Image.asset("assets/images/chest.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Chest:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
                          Text(
                            "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12
                          ),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width: 320,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Image.asset("assets/images/shol.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shoulder:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
                          Text(
                            "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12
                          ),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width: 320,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Image.asset("assets/images/bis.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Biceps:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
                          Text(
                            "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12
                          ),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width: 320,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Image.asset("assets/images/abs.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ABS:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
                          Text(
                            "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12
                          ),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width: 320,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      child: Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Image.asset("assets/images/glu.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Glutes:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
                          Text(
                            "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12
                          ),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width: 320,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      child: Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Image.asset("assets/images/waist.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Waist:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
                          Text(
                            "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12
                          ),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width: 320,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      child: Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Image.asset("assets/images/thighs.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Thighs:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
                          Text(
                            "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12
                          ),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height:20
            ),
            Center(
              child: Container(
                height: 40,
                width: 230,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 87, 87,30),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Okay",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
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
