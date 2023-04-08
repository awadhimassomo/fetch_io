
import 'package:fetch_io/size_config.dart';
import 'package:flutter/material.dart';
import 'package:fetch_io/model.dart';



class ProductDetails extends StatelessWidget {
  static String routeName = '/ProductDetails';
  const ProductDetails({Key? key, required ModelData modelData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final ModelData modelData = ModalRoute.of(context)!.settings.arguments as ModelData;
    // todo add product details
    //make it scrollable

    // todo add product image
    // todo add product price
    // todo add product name
    // todo add product description
    // todo add product size
    // todo add product color
    // todo add product quantity
    // todo add product add to cart button
    // todo add product add to favorite button
    // todo add product add to share button
    // todo add product add to buy button

     return Scaffold(
       appBar: AppBar(
        title: Text(modelData.title),
      ),
      body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
    Text(modelData.title),
      Text(modelData.price.toString()),
     Text(modelData.discription),
    //type "null" is not a subtype of type 'ModelData' in type cast
    
        ],
        ),
      ),
    );


  }
}







