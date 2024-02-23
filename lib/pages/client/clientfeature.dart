import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:veritas/functions.dart';

class clfeat extends StatefulWidget {
  // const clfeat({super.key});

  @override
  State<clfeat> createState() => _clfeatState();
}

class _clfeatState extends State<clfeat> {
  int currentIndex = 0;

  final PageController _pageController = PageController();

  List<String> images = [
    "assets/images/Business deal.svg",
    "assets/images/Chat bot-pana 1.svg",
    "assets/images/Group 1.svg",
    "assets/images/Lawyer-pana 1.svg",
  ];

  List<String> texts = [
    "EASILY REACH ADVOCATES...",
    "CLEAR YOUR DOUBTS RELATED TO YOUR CASE...",
    "PRIVACY REGARDING THE CASE",
    "GET TOP LAWYERS NEAR YOUR AREA",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      body: SafeArea(
        child: Column(
          children: [
            Func.veritastext(),
            SizedBox(
              height: 570,
              width: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index){
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: images.length,
                itemBuilder: (context,index){
                  return Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 400,
                        child: SvgPicture.asset(images[index]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin : EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          texts[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                            fontSize: 26,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i=0;i<images.length;i++)
                  indicator(currentIndex==i)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(right:10),
              alignment: Alignment.topRight,
              child: FloatingActionButton(
                onPressed: () {
                  if (currentIndex == images.length - 1) {
                    Navigator.pushNamed(context, "/loginclient");
                  } else {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  }
                },
                backgroundColor: Colors.black,
                shape: CircleBorder(),
                child: Icon(Icons.arrow_forward,color: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget indicator(bool isSelected){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: isSelected?20:15,
        width: isSelected?20:15,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
