
import 'package:fetch_io/ProductDetails_Screens/Quantity.dart';
import 'package:fetch_io/ProductDetails_Screens/colorDot.dart';
import 'package:fetch_io/ProductDetails_Screens/sizType.dart';
import 'package:fetch_io/model.dart';
import 'package:fetch_io/size_config.dart';
import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  final ModelData modelData;

  const BottomCard({Key? key,
    required this.modelData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [

      ],

    );
  }
}