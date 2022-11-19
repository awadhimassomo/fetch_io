

import 'package:fetch_io/ProductDetails_Screens/Details.dart';
import 'package:fetch_io/ProductDetails_Screens/ProductImage.dart';
import 'package:fetch_io/size_config.dart';
import 'package:flutter/material.dart';
import 'package:fetch_io/model.dart';


class ProductDetails extends StatefulWidget {
  static String routeName="/ProductDetails";
  ProductDetails({Key? key,
    required  modelData})
      : super(key: key);


  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final ProductDetailsArguments arguments=
        ModalRoute.of(context) ?.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Colors.grey[250],
      appBar: AppBar(
        elevation:0,
       backgroundColor: Colors.transparent,
        title:const Center(
          child: Text('Product Details',style: TextStyle(
            color: Color(0xff1D1C1C),
          ),),
        ),
        leading:IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back,color: Color(0xff1D1C1C),
          ),
        ),

        actions: [
         Stack(
           children: [
             Positioned(
               child: IconButton(onPressed:(){}
                   , icon:const Icon(Icons.shopping_cart,color: Color(0xff1D1C1C)), ),
             ),
             Positioned(
                 top: 4,
                 right:3,
                 child:Container(
                   height: getProportionateScreenWidth(16),
                   width: getProportionateScreenWidth(16),
                   decoration: const BoxDecoration(
                     color: Color(0xFFFF4848),
                     shape: BoxShape.circle,
                   ),
                   child: Center(
                     child: Text(
                       '3',style: TextStyle(
                       color: Colors.white,
                       fontSize: getProportionateScreenWidth(10),
                       height: 1,
                     ),
                     ),
                   ),
                 ))
           ]
         )
          
        ]

      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          ProductImage(modelData:arguments.modelData,),

          Details(modelData: arguments.modelData,)
        ],
      )



    );
  }
}

class ProductDetailsArguments{
  final ModelData modelData;

  ProductDetailsArguments({required this.modelData });
}





