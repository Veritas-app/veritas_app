import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class regcase extends StatelessWidget {
  const regcase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(132, 189, 255, 1),
        title: Text("Chat bot",
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),),
      ),
      body: SafeArea(
        child:Column(
          children: [
            SizedBox(
              height:639,
              width: 450,
            ),
            Row(
              
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 390,
                    
                    child: TextField(
                        decoration: InputDecoration(
                          
                          suffixIcon: Row(
                            children:[Icon(Icons.send),]),
                          
                          
                          hintText: "Enter Your query here",
                          hintStyle: TextStyle(
                            color: Colors.white
                            
                  
                          ),
                          // fillColor: Colors.black,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(27),
                          ),
                          fillColor: const Color.fromRGBO(132, 189, 255, 1),
                          filled: true,
                      
                        ),
                        
                        

                      ),
                      
                  ),
                  
                ),
                // Icon(Icons.voice_chat)
                
                
                
               
              ],
            )

          ],
        ), 
      ),
    
    );
  }
}