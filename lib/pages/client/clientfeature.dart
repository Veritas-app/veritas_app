import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:veritas/pages/functions.dart';


class clfeat extends StatefulWidget {
  // const clfeat({key}) : super(key:key);

  @override
  State<clfeat> createState() => _clfeatState();
}

class _clfeatState extends State<clfeat> {
  late final PageController pageController;
  int pageNo = 0;
  int counter = 0;

  Map feattext = {
    0: "EASILY REACH ADVOCATES...",
    1: "CLEAR YOUR DOUBTS RELATED TO YOUR CASE...",
    2: "PRIVACY REGARDING THE CASE",
    3: "GET TOP LAWYERS NEAR YOUR AREA",
  };
  Map featimg = {
    0: "assets/images/Business deal.svg",
    1: "assets/images/Chat bot-pana 1.svg",
    2: "assets/images/Group 1.svg",
    3: "assets/images/Lawyer-pana 1.svg",
  };

  @override
  void initState(){
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueAccent[100],
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Func.veritastext(),
              SizedBox(
                height: 600,
                child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (index){
                      pageNo = index;
                      counter = index;
                      setState(() {

                      });
                    },
                    itemBuilder: (_, index) {
                      return AnimatedBuilder(
                        animation: pageController,
                        builder: (context,child){
                          return child!;
                        },
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          color: Colors.blueAccent[100],
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(featimg[counter]),
                              SizedBox(height: 8),
                              Text(feattext[counter],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 4),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4,(index) => Container(
                  margin: const EdgeInsets.all(4),
                  child: Icon(
                    Icons.circle,
                    size:18,
                    color: pageNo == index
                        ? Colors.black
                        : Colors.grey,
                  ),
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
