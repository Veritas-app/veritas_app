import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:veritas/hero_dialog_route.dart';

class lawyerdashboard extends StatelessWidget {
  const lawyerdashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(132, 189, 255, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 350,
                    height: 100,
                    child: SizedBox(
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(200),
                              borderSide: BorderSide.none),
                          prefixIcon: Icon(Icons.search_sharp),
                          hintText: ("Search for Advocates"),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 285,
                      child: Container(
                        height: 70,
                        width: 70,
                        child: GestureDetector(
                            onTap: (){
                              // Navigator.pushNamed(context, "/jhujuk");
                              Navigator.of(context).push(HeroDialogRoute(builder: (context) {
                                return const _PopupCard();
                              }));
                            },
                            child: Hero(
                              tag: "profile",
                              child:SvgPicture.asset(
                                "assets/images/man-user-circle-icon 1.svg",
                                fit: BoxFit.fill,
                              ),
                            )
                        ),
                      )
                  ),
                ],
              ),

              //END OF SEARCH BAR
              SizedBox(
                height: 20,
              ),

              // "NEW CASE CARD" START:
              InkWell(
                onTap: (){},
                child: Card(
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
                            "Find \ncase",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: SvgPicture.asset(
                              "assets/images/Judge-rafiki 1.svg"),
                        ),
                      ],
                    ),
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
                        child: SvgPicture.asset(
                            "assets/images/Processing-bro 1.svg"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 65, top: 5),
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
              InkWell(
                onTap: (){Navigator.pushNamed(context, "/chat");},
                child: Card(
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
              ),
              Card(
                color: const Color.fromRGBO(29, 29, 29, 1),
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
                          "Predict\nthe\ndocuments",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w800,
                            fontSize: 22,
                            color: Colors.white,
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
                          "Top\nLawyers\nNear\nYou",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: SvgPicture.asset(
                            "assets/images/Judge-rafiki 1.svg"),
                      ),
                    ],
                  ),
                ),
              ),

              // "QUERIES" CARD END

              // BOTTOM NAVIGATION BAR START:

              // BOTTOM NAVIGATION BAR END
            ],
          ),
        ),
      ),
      bottomNavigationBar:
      // padding: const EdgeInsets.only(top: 20),
      Container(
        color: const Color.fromRGBO(29, 29, 29,
            1), // Set the color to match the "CASE STATUS" card
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_sharp, color: Colors.white),
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
          // Add any additional properties you want for the BottomNavigationBar
        ),
      ),
    );
  }
}
class _PopupCard extends StatelessWidget {
  /// {@macro add_todo_popup_card}
  const _PopupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Hero(
            tag: "profile",
            child: Material(
              color: Colors.white,
              elevation: 2,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset("assets/images/man-user-circle-icon 1.svg",),
                    const Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text("profile")
                    ),
                    TextButton(
                        onPressed: (){
                          try{
                            FirebaseAuth.instance.signOut();
                            Navigator.pushNamedAndRemoveUntil(context, "/loginlawyer", (route) => false);
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: const Text("logged out "))
                            );
                          }on FirebaseAuthException catch(e){
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text("${e.message}")
                                )
                            );
                          }
                        },
                        child: Text("log out")
                    ),

                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
