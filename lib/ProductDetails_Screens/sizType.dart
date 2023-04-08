
import 'package:fetch_io/ProductDetails_Screens/sizType.dart';
import 'package:fetch_io/model.dart';
import 'package:fetch_io/size_config.dart';
import 'package:flutter/material.dart';

class sizeType extends StatelessWidget {
  final ModelData modelData;
  const sizeType({Key? key ,
    required this.modelData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [...Texts(modelData)
  ],
    );
  }
  List<Widget>Texts(ModelData modelData){
    return modelData.sizeType.map((sizeType)=>
        Container(
          margin: const EdgeInsets.only(right: 2),
          padding: EdgeInsets.all(getProportionateScreenWidth(8)),
          height: getProportionateScreenWidth(60),
          width: getProportionateScreenWidth(60),
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            shape: BoxShape.rectangle,
          ),
          child: DecoratedBox(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
      ),
      child: Center(
        child: Text(sizeType,style: const TextStyle(color: Colors.white),
        ),
      )),
        )).toList();

  }
}


