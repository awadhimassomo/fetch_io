import 'package:fetch_io/Sign_up.dart';
import 'package:flutter/material.dart';
import 'package:fetch_io/Login.dart';
// the widget are all in statefuls
void main()=>runApp(fetch_io());

class fetch_io extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Login(),
    );
  }
}



