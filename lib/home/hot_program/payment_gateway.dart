import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Payment_gateway extends StatefulWidget {
  const Payment_gateway({Key? key}) : super(key: key);

  @override
  State<Payment_gateway> createState() => _Payment_gatewayState();
}

class _Payment_gatewayState extends State<Payment_gateway> {
  List<String> menu =['Debit/Credit Card'];
  String selected = '';
  var setvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 50),
              child: Row(
                children: [
                  InkWell(
                    onTap:(){},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5,top: 2),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40,top: 5),
                    child: Text(
                      "Patment Gateway",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,top: 30),
              child: Text(
                "Payment Methods:",
                style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),
            ),
            FormBuilder(
              child: Column(
                children: [
                 Padding(
                      padding: const EdgeInsets.only(left: 14,right: 14,top: 12),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 320,
                              height: 60,
                              padding: EdgeInsets.only(left: 16, right: 16),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButton(
                                hint: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 35),
                                ),
                                isExpanded: true,
                                icon: Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Icon(Icons.arrow_drop_down,size: 40,),
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
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'My Field',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
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
