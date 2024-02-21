import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class regcase extends StatefulWidget {
  const regcase({Key? key}) : super(key: key);

  @override
  _regcaseState createState() => _regcaseState();
}

class _regcaseState extends State<regcase> {
  String? _selectedOption;
  bool? _isChecked = false;


  TextEditingController _locationCont = TextEditingController();
  TextEditingController _dateCont = TextEditingController();
  TextEditingController _descriptionCont = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(132, 189, 255, 1),
      body: Container(
        color: const Color.fromRGBO(132, 189, 255, 1),
        child: Column(
          children: [
            AppBar(
              title: const Text("Register a Case"),
              backgroundColor: Color.fromRGBO(132, 189, 255, 1),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: 20), // Vertical space
                    Padding(
                      padding: const EdgeInsets.fromLTRB(21, 40, 21, 0), // Left and right padding
                      child: Container(
                        height: 65,
                        width: 353,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10), // Spacing
                            Text(
                              'Type of case: ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white, // Text color set to white
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                    icon: Icon(Icons.keyboard_arrow_down, color: Colors.white), // Custom dropdown icon
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    value: _selectedOption,
                                    dropdownColor: Colors.black, // Dropdown box color
                                    items: <String>[
                                      'Civil',
                                      'Labor',
                                      'Family',
                                      'Cooperative',
                                      'Consumer forum',
                                      'Other',
                                    ].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            value,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      setState(() {
                                        _selectedOption = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Additional vertical space
                    Padding(
                      padding: const EdgeInsets.fromLTRB(21, 20, 21, 0), // Left and right padding
                      child: Container(
                        height: 65,
                        width: 353,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: _locationCont,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Location',
                            hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Additional vertical space
                    Padding(
                      padding: const EdgeInsets.fromLTRB(21, 20, 21, 0), // Left and right padding
                      child: Container(
                        height: 65,
                        width: 353,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: _dateCont,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Approximate Date',
                            hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Additional vertical space
                    Padding(
                      padding: const EdgeInsets.fromLTRB(21, 20, 21, 0), // Left and right padding
                      child: Container(
                        height: 65,
                        width: 353,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: _descriptionCont,
                          maxLines: 3,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Briefly describe your case here',
                            hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Additional vertical space
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0), // Left and right padding
                      child: Container(
                        height: 65,
                        width: 353,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 72,
                              height: 72,
                              child: Image.asset('assets/images/Folder-pana 1.png'), // Replace 'your_image.png' with your image asset path
                            ),
                            SizedBox(width: 10), // Spacing between image and text
                            Text(
                              'Upload files regarding the case',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.6), // lighter color
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Additional vertical space
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0), // Left and right padding
                      child: Container(
                        height: 65,
                        width: 353,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15), // Border radius set to 15
                        ),
                        child: Row(
                          children: [
                            Checkbox(
                              value: _isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isChecked = value;
                                });
                              },
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8), // Adjust left padding
                                child: Text(
                                  'I certify that the above facts are true to the best of my knowledge.',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Additional vertical space
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0), // Left and right padding
                      child: ElevatedButton(
                        child:SizedBox(
                          height: 65,
                          width: 353,
                          child: Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape : RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0)
                          ),
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {
                          if (_selectedOption!.isNotEmpty && _locationCont.text.trim().isNotEmpty && _dateCont.text.trim().isNotEmpty && _descriptionCont.text.trim().isNotEmpty) {
                            final user = FirebaseAuth.instance.currentUser;
                            FirebaseFirestore.instance.collection(
                                "Registerted_Cases(non-assigned)")
                                .doc(user!.uid)
                                .collection("Cases")
                                .add({
                              "clientName": user.displayName,
                              "clientEmail": user.email,
                              "caseType": _selectedOption,
                              "location": _locationCont.text.trim(),
                              "date": _dateCont.text.trim(),
                              "briefing": _descriptionCont.text.trim(),
                            }).then((value) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Case registered."))))
                                .catchError((error) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("!!Try again later!!"))));
                            _locationCont.clear();
                            _dateCont.clear();
                            _descriptionCont.clear();
                            // _isChecked = false;
                            // _selectedOption = null;
                          }else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please answer all the fields.")));
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(29, 29, 29, 1), // Set the color to match the "CASE STATUS" card
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
