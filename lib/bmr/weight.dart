import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Weight_NavBar extends StatefulWidget {
  const Weight_NavBar({Key? key}) : super(key: key);

  @override
  State<Weight_NavBar> createState() => _Weight_NavBarState();
}

class _Weight_NavBarState extends State<Weight_NavBar>   with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor:Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "BMR Calculator",style: GoogleFonts.poppins(
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
              onPressed: () {

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
            TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.black,
              labelColor:Color.fromRGBO(255, 87, 87,30),
              indicatorColor: Color.fromRGBO(255, 87, 87,30),

              tabs: [
                Tab(text: 'Men'),
                Tab(text: 'Women'),
              ],
              labelStyle:
              GoogleFonts.poppins(color: Color.fromRGBO(255, 87, 87,30),
                  fontSize: 16,fontWeight: FontWeight.bold),
              labelPadding: EdgeInsets.only(left: 60, right: 60),
              isScrollable: true,
            ),
            Container(
              height: 900,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 16,top: 20),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'Age:',
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
                                      hintText: 'Height CM:',
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
                                    onTap: () {
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
                                      hintText: 'Weight KG:',
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
                                        "Calculate",
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
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 20),
                        child: Container(
                          height: 70,
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
                                child: Text("Your BMR:",style: GoogleFonts.poppins(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontSize: 14,
                                ),),
                              ),
                              SizedBox(
                                height:5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text("33,224",style: GoogleFonts.poppins(
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
                            height: 70,
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
                                    "Total daily energy expenditure( TDEE ):",
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
                                  child: Text("1.324 Light",style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),
                                ),
                              ],
                            )
                        ),
                      ),

                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 16,top: 20),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'Age:',
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
                                      hintText: 'Height CM:',
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
                                    onTap: () {
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
                                      hintText: 'Weight KG:',
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
                                        "Calculate",
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
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 20),
                        child: Container(
                            height: 60,
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
                                  child: Text("Your BMR:",style: GoogleFonts.poppins(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontSize: 14,
                                  ),),
                                ),
                                SizedBox(
                                  height:5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text("33,224",style: GoogleFonts.poppins(
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
                            height: 60,
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
                                    "Total daily energy expenditure( TDEE ):",
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
                                  child: Text("1.324 Light",style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),
                                ),
                              ],
                            )
                        ),
                      ),

                    ],
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
