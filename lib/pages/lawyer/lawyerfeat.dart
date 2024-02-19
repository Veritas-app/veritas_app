import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:veritas/pages/functions.dart';
import 'package:veritas/pages/loginpage.dart';

class lawfeat extends StatefulWidget {
  // const clfeat({super.key});

  @override
  State<lawfeat> createState() => _clfeatState();
}

class _clfeatState extends State<lawfeat> {
  int currentIndex = 0;

  final PageController _pageController = PageController();

  List<String> images = [
    "assets/images/Customer relationship management-rafiki 1.svg",
    "assets/images/Documents-bro 1.svg",
    "assets/images/guilty-rafiki 1.svg",
  ];

  List<String> texts = [
    "CONNECT WITH CLIENTS EFFORTLESSLY!",
    "EXCHANGE DOCUMENTS EASILY",
    "GET CASES RELATED TO YOU",
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
              height: 600,
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
                      Text(
                        texts[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var i=0;i<images.length;i++)
                            indicator(currentIndex==i)
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(right:10),
              alignment: Alignment.topRight,
              child: FloatingActionButton(
                onPressed: () {
                  if (currentIndex == images.length - 1) {
                    Navigator.pushNamed(context,"/loginlawyer");
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
