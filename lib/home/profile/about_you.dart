import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_navbar.dart';
class About_you extends StatefulWidget {
  const About_you({Key? key}) : super(key: key);

  @override
  State<About_you> createState() => _About_youState();
}

class _About_youState extends State<About_you> {
  List<String> gender = ['Male','Female'];
  String selected = '';
  var setvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 40),
              child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => homeNavBar()));
                    },
                    child:Icon(
                          Icons.cancel,
                          color: Colors.black54,
                      size: 35,
                        ),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 20),
              child: Text(
                "About You",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: InkWell(
                onTap: (){},
                child: Text(
                  "Tell us about you.",
                  style: GoogleFonts.poppins(
                      color: Color.fromRGBO(255, 87, 87,30),
                      fontSize: 16 ,
                      ),
                ),
              ),
            ),
            Form(
              child:Padding(
                padding:
                const EdgeInsets.only(left: 14, right: 14, top: 12),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 320,
                        height: 60,
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                            border:
                            Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: DropdownButton(
                          hint: Padding(
                            padding:
                            const EdgeInsets.only(top: 10, left: 35),
                          ),
                          isExpanded: true,
                          icon: Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 40,
                            ),
                          ),
                          underline: SizedBox(),
                          value: setvalue,
                          onChanged: (newValue) {
                            setState(() {
                              setvalue = newValue;
                            });
                          },
                          items: gender.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      Text(
                        selected,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black,
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
