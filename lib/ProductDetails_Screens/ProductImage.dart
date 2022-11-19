import 'package:fetch_io/model.dart';
import 'package:fetch_io/size_config.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {

const ProductImage({Key? key,required this.modelData }) : super(key: key);
final ModelData modelData;
@override
Widget build(BuildContext context) {

  return Column(
    children: [
      //  width:getProportionateScreenWidth(500),
    Material(
    elevation: 9,
    borderRadius: BorderRadius.circular(15),
    child: Container(
      height: 150
      ,
      decoration: BoxDecoration(

    ),
      //  decoration: BoxDecoration(

        //    color: Colors.white30,
        //    borderRadius: BorderRadius.circular(15)
     //   ),
        //child: ClipRRect(
          //  borderRadius: BorderRadius.circular(10),
         //   child: Image.network(modelData.imageUrl,fit: BoxFit.fill,))
    ),
    ),
    ],
  );
}
}

