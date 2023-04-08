import 'package:fetch_io/Screens/Cart.dart';
import 'package:fetch_io/Screens/Login.dart';
import 'package:fetch_io/Screens/MainPage.dart';
import 'package:fetch_io/Screens/ProductDetails.dart';
import 'package:fetch_io/model.dart';
import 'package:flutter/material.dart';

final Map<String,WidgetBuilder>routes={
  Login.routeName:(context)=>Login(),
  MainPage.routeName:(context)=>MainPage(),
  CartScreen.routeName:(context)=>CartScreen(),
  //create a route and pass in the modeldata as an argumetn
  ProductDetails.routeName:(context)=>ProductDetails(modelData: ModalRoute.of(context)!.settings.arguments as ModelData),
 

};
