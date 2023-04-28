import 'package:fitvera/gym/cardio_strectch_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'meat_detail.dart';

class Analytics extends StatefulWidget {
  const Analytics({Key? key}) : super(key: key);

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  List<bool> isSelectedList = [false, false, false,false,false];
  List<String> containerText = ['Sedentary', 'Lightly Active', 'Moderately Active','Very Active','Extra Active'];
  List<String> containerText1 = ['Little or no exercise', 'Exercise 1-2 days per week', 'Exercise 3-5 days per week','Exercise 6-7 days per week','Exercise 6-7 days per week and active job'];

  List<bool> isSelectedList1 = [false, false, false];
  List<String> containerText2 = ['Lose Weight','Gain Weight','Maintain'];


  List<String> menu = ['Male','Female'];
  String selected = '';
  var setvalue;
  String currentUnit = "kg";
  String currentHeight = "CM";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "Macro Calculator",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 22,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18,bottom: 15,top: 20),
                    child: TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'Age :',
                        errorStyle: GoogleFonts.roboto(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey[400]!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18,bottom: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      autofocus: false,
                      validator: (value) {
                        double? weight = double.tryParse(value!);
                        if (weight == null) {
                          return "Please enter a valid weight";
                        }
                        if (currentUnit == "kg") {
                          // Convert weight to kilograms
                          weight *= 0.45359237;
                        }
                        // Perform any other validations
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Weight',
                        errorStyle: GoogleFonts.roboto(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("KG",
                                style: TextStyle(
                                  color: currentUnit == "KG"
                                      ? Colors.black
                                      : Colors.grey[400],
                                )),
                            Switch(
                              value: currentUnit == "LB",
                              onChanged: (value) {
                                setState(() {
                                  currentUnit = value ? "LB" : "KG";
                                });
                              },
                            ),
                            Text("LB",
                                style: TextStyle(
                                  color: currentUnit == "LB"
                                      ? Colors.black
                                      : Colors.grey[400],
                                )),
                          ],
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey[400]!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18,bottom: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      autofocus: false,
                      validator: (value) {
                        double? height = double.tryParse(value!);
                        if (height == null) {
                          return "Please enter a valid weight";
                        }
                        if (currentHeight == "Cm") {
                          // Convert weight to kilograms
                          height *= 30.48;
                        }
                        // Perform any other validations
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Height',
                        errorStyle: GoogleFonts.roboto(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("CM",
                                style: TextStyle(
                                  color: currentUnit == "CM"
                                      ? Colors.black
                                      : Colors.grey[400],
                                )),
                            Switch(
                              value: currentUnit == "Ft.",
                              onChanged: (value) {
                                setState(() {
                                  currentUnit = value ? "Ft." : "CM";
                                });
                              },
                            ),
                            Text("Ft.",
                                style: TextStyle(
                                  color: currentUnit == "Ft."
                                      ? Colors.black
                                      : Colors.grey[400],
                                )),
                          ],
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey[400]!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                    ),
                  ),
                  Padding(
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
                                border:
                                Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: DropdownButton(
                              hint: Padding(
                                padding:
                                const EdgeInsets.only(top: 10),
                                child: Text("Gender",style: GoogleFonts.poppins(

                                ),),
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
                              items: menu.map((String value) {
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

                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(
                      "Activity Level :",style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right:16,top: 10 ),
                    child: Column(
                      children: [
                        for (int i = 0; i < containerText.length; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  for (int j = 0; j < isSelectedList.length; j++) {
                                    isSelectedList[j] = (i == j);
                                  }
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 320,
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                decoration: BoxDecoration(
                                  color: isSelectedList[i] ? Color.fromRGBO(29, 69, 100, 30) : Colors.white,
                                  border: Border.all(
                                    color: isSelectedList[i] ? Color.fromRGBO(29, 69, 100, 30) : Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          containerText[i],
                                          style: GoogleFonts.poppins(
                                              color: isSelectedList[i] ? Colors.white : Colors.black,
                                              fontWeight: FontWeight.bold,
                                            fontSize:14,
                                          ),
                                        ),
                                        Text(
                                          containerText1[i],
                                          style: GoogleFonts.poppins(
                                              color: isSelectedList[i] ? Colors.white : Colors.black,
                                            fontSize:11,
                                          ),
                                        ),
                                      ],
                                    ),
                                    isSelectedList[i]
                                        ? Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    )
                                        : SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 260),
                    child: Text(
                      "Goal :",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right:16,top: 10 ),
                    child: Column(
                      children: [
                        for (int i = 0; i < containerText2.length; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  for (int j = 0; j < isSelectedList1.length; j++) {
                                    isSelectedList1[j] = (i == j);
                                  }
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 320,
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                decoration: BoxDecoration(
                                  color: isSelectedList1[i] ? Color.fromRGBO(29, 69, 100, 30) : Colors.white,
                                  border: Border.all(
                                    color: isSelectedList1[i] ? Color.fromRGBO(29, 69, 100, 30) : Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                        Text(
                                          containerText2[i],
                                          style: GoogleFonts.poppins(
                                            color: isSelectedList1[i] ? Colors.white : Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize:14,
                                          ),
                                        ),
                                    isSelectedList1[i]
                                        ? Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    )
                                        : SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap:(){
                      },
                      child: Container(
                        height: 40,
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 87, 87,30),

                        ),
                        child: Center(
                          child: Text(
                            "Calculate",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right:16,top: 20,bottom: 30 ),
                    child: Container(
                      height: 60,
                      width: 320,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5,top: 10,bottom: 3),
                            child: Text("Result",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("00.00",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
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
          ],
        ),
      ),
    );
  }
}
