import 'package:flutter/material.dart';

class signInDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(132, 189, 255, 1),
      
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: Row(
                children: [
                  Text(
                    "Veritas",
                    style: TextStyle(
                      fontFamily: "Jockey One",
                      fontSize: 32,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Create Account Now!",
              style: TextStyle(
                fontFamily: "Jockey One",
                fontSize: 36,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(151, 151, 151, 0.8)
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(27),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
                style: TextStyle(
                  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(151, 151, 151, 0.8)
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(27),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
                style: TextStyle(
                  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(151, 151, 151, 0.8)
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(27),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
                style: TextStyle(
                  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(151, 151, 151, 0.8)
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(27),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
                style: TextStyle(
                  
                ),
              ),
            ),
            ElevatedButton(
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(44, 44, 44, 1,)),
                ),
                onPressed: () {
                  
                },
            )
          ],
        ),
      ),
      
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: MyHomePage(),
//     debugShowCheckedModeBanner: false,
//   ));
// }