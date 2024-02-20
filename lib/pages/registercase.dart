import 'package:flutter/material.dart';

class regcase extends StatefulWidget {
  const regcase({Key? key}) : super(key: key);

  @override
  _regcaseState createState() => _regcaseState();
}

class _regcaseState extends State<regcase> {
  String? _selectedOption;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(132, 189, 255, 1),
      body: Container(
        color: const Color.fromRGBO(132, 189, 255, 1),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20), // Vertical space
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
                              onChanged: (newValue) {
                                setState(() {
                                  _isChecked = newValue!;
                                });
                              },
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8), // Adjust left padding
                                child: Text(
                                  'I certify that the above facts are true\nto the best of\nmy knowledge',
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
                      child: Container(
                        height: 65,
                        width: 353,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black), // Setting icon color
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder, color: Colors.black), // Setting icon color
            label: 'My Files',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment, color: Colors.black), // Setting icon color
            label: 'Payments',
          ),
        ],
      ),
    );
  }
}
