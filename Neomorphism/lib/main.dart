import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isEleveted = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: InkWell(
          onTap: (){
            setState(() {
              _isEleveted=!_isEleveted;
            });
             // Based on this value box shadow is triggered
          },
          child: AnimatedContainer(
            duration: Duration(
              milliseconds: 500
            ),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50),
                boxShadow: _isEleveted? [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(4,4),
                      blurRadius: 20,
                      spreadRadius: 1
                  ),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4,-4),
                      blurRadius: 15,
                      spreadRadius: 1
                  )
                ]:null

            ),
          ),
        ),
      ),
    );
  }
}


//Sets of rule to follow

// 1. Screen bg color
// 2. Container bg color
// 3. Shadow color
