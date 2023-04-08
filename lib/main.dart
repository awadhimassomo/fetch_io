import 'package:fetch_io/Screens/Login.dart';
import 'package:fetch_io/authnitification/GogogleSignInProvider.dart';
import 'package:fetch_io/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

// the widget are all in statefuls
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(fetch_io());
}

class fetch_io extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create:(context)=> GoogleSignInProvider(),
      child: MaterialApp(
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
      ),
    );
  }




