import 'package:fetch_io/model.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {

const ProductImage({Key? key,required this.modelData }) : super(key: key);
final ModelData modelData;
@override
Widget build(BuildContext context) {

  return Column(
    children: [
      //  width:getProportionateScreenWidth(500),

    AspectRatio(aspectRatio: 1/1,
    child:Container(
      decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fitHeight,
       image: NetworkImage(modelData.imageUrl,),
      ),
      )


    ),
    ),
      //  decoration: BoxDecoration(

        //    color: Colors.white30,
        //    borderRadius: BorderRadius.circular(15)
     //   ),
        //child: ClipRRect(
          //  borderRadius: BorderRadius.circular(10),
         //   child: Image.network(modelData.imageUrl,fit: BoxFit.fill,)
    ],
  );
}
}

