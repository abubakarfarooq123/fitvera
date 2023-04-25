import 'package:fitvera/home/profile/profile_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../home_navbar.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';



class About_you extends StatefulWidget {
  const About_you({Key? key}) : super(key: key);

  @override
  State<About_you> createState() => _About_youState();
}

class _About_youState extends State<About_you> {


  TextEditingController _date = TextEditingController();
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
                      Navigator.push(
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
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 16,top: 10),
              child: Form(
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
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'Your Gender:',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
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
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextFormField(
                                  controller: _date,
                                  decoration: InputDecoration(
                                    hintText: 'Your Birthday Date',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.2),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                  ),
                              onTap: () async{
                                DateTime? pickeddate = await showDatePicker(context: context,
                                  initialDate: DateTime.now(), firstDate: DateTime(1900),
                                  lastDate: DateTime.now());
                                if(pickeddate != null){
                                  setState(() {
                                    _date.text = DateFormat('yyyy-MM-dd').format(pickeddate);
                                  });

                                }
                              },
                            ),
                        ),
                                        // GestureDetector(
                //   onTap: () {
                //     showModalBottomSheet(
                //       context: context,
                //       builder: (BuildContext builder) {
                //         return Container(
                //           height: MediaQuery.of(context).copyWith().size.height / 3,
                //           child: Row(
                //             children: [
                //               Expanded(
                //                 child: CupertinoPicker(
                //                   itemExtent: 32.0,
                //                   onSelectedItemChanged: (int index) {
                //                     setState(() {
                //                       _selectedFeet = index + 3; // start at 3 feet
                //                     });
                //                   },
                //                   children: List<Widget>.generate(8, (int index) {
                //                     return Center(
                //                       child: Text((index + 3).toString()),
                //                     );
                //                   }),
                //                 ),
                //               ),
                //               Expanded(
                //                 child: CupertinoPicker(
                //                   itemExtent: 32.0,
                //                   onSelectedItemChanged: (int index) {
                //                     setState(() {
                //                       _selectedInches = index;
                //                     });
                //                   },
                //                   children: List<Widget>.generate(12, (int index) {
                //                     return Center(
                //                       child: Text(index.toString()),
                //                     );
                //                   }),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         );
                //       },
                //     );
                //   },
                //   child: AbsorbPointer(
                //     child: TextFormField(
                //       decoration: InputDecoration(
                //         labelText: "Height",
                //         suffixText: "ft in",
                //       ),
                //       initialValue: '$_selectedFeet\' $_selectedInches"',
                //     ),
                //   ),
                // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25 ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.3),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'Height',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.2),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                              ),
                              onTap: () async{
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25 ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.3),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'Weight',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.2),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                              ),
                              onTap: () async{
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 18, top: 210, bottom: 10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profile_detail()));
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
                                  "Continue",
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

          ],
        ),
      ),
    );
  }
}
