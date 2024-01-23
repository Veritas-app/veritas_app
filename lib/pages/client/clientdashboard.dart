import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:veritas/pages/functions.dart";

class cldashboard extends StatelessWidget {
  const cldashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(132, 189, 255, 1),
      bottomNavigationBar:
      Container(
        // padding: const EdgeInsets.only(top:20),
        color: const Color.fromRGBO(29, 29, 29, 1), // Set the color to match the "CASE STATUS" card
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_sharp
                  , color: Colors.white),
              label: 'My Files',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment_sharp, color: Colors.white),
              label: 'Payments',
            ),
          ],
          backgroundColor: Colors.transparent, // Set to transparent
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
          // Add any additional properties you want for the BottomNavigationBar,
        ),),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  // SEARCH BAR
                  SizedBox(

                    width: 350,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, top: 20, right: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(200),
                              borderSide: BorderSide.none),
                          prefixIcon: Icon(Icons.search_sharp),
                          hintText: (" Search for Advocates"),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),


                ],
              ),

              //END OF SEARCH BAR
              SizedBox(
                height: 30 ,
              ),




              // "NEW CASE CARD" START:
              Card(
                shadowColor: Colors.black,
                elevation: 20,
                color: Colors.white,
                borderOnForeground: true,

                margin: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 145,
                  width: 312,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 25, top: 10),
                        child: Text(
                          "New \ncase",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: SvgPicture.asset("assets/images/Judge-rafiki 1.svg"),
                      ),
                    ],
                  ),
                ),
              ),
              // "NEW CASE" CARD END

              // CASE STATUS CARD START
              Card(
                elevation: 20,
                shadowColor: Colors.black,
                borderOnForeground: true,

                color: const Color.fromRGBO(29, 29, 29, 1),
                margin: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 145,
                  width: 312,
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(0),
                        child: SvgPicture.asset("assets/images/Processing-bro 1.svg"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 65, top: 5), // change the padding ########
                        child: Text(
                          "Case\nStatus",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // "CASE STATUS" CARD END

              // "QUERIES" CARD START
              Card(
                elevation: 20,
                shadowColor: Colors.black,
                margin: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 145,
                  width: 312,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 25, top: 10),
                        child: Text(
                          "Any queries\nregarding\nthe case? ",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w800,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: SvgPicture.asset("assets/images/queries.svg"),
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
    );
  }
}