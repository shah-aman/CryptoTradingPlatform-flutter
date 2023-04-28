import 'package:flutter/material.dart';

class PillOptions extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PillOptions> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(),
      child: SizedBox(
        height: 48,
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(8),
                    ),
                    gradient: _selectedIndex == 0
                        ? LinearGradient(
                            colors: [
                              Color.fromARGB(255, 126, 247, 70),
                              Color.fromARGB(255, 197, 252, 69)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      "Buying",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    gradient: _selectedIndex == 1
                        ? LinearGradient(
                            colors: [
                              Color.fromARGB(255, 126, 247, 70),
                              Color.fromARGB(255, 197, 252, 69)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      "Selling",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(8),
                    ),
                    color: Colors.white30,
                    gradient: _selectedIndex == 2
                        ? LinearGradient(
                            colors: [
                              Color.fromARGB(255, 126, 247, 70),
                              Color.fromARGB(255, 197, 252, 69)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      "Margin",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
