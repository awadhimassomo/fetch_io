import 'package:fetch_io/Screens/Login.dart';
import 'package:fetch_io/Screens/MainPage.dart';
import 'package:fetch_io/Screens/ProductDetails.dart';
import 'package:fetch_io/model.dart';
import 'package:flutter/material.dart';

final Map<String,WidgetBuilder>routes={
  Login.routeName:(context)=>Login(),
  MainPage.routeName:(context)=>MainPage(),
  ProductDetails.routeName:(context)=>ProductDetails(modelData: ModelList,),

};