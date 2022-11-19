import 'package:fetch_io/Screens/Login.dart';
import 'package:fetch_io/routes.dart';
import 'package:flutter/material.dart';

// the widget are all in statefuls
void main()=>runApp(fetch_io());

class fetch_io extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme:
        AppBarTheme(
         backgroundColor: Colors.grey[200],
        ),
      ),
      debugShowCheckedModeBanner: false,
    initialRoute: Login.routeName,
      routes:routes,
    );
  }
}



