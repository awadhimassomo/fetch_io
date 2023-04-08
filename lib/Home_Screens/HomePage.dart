
import 'package:fetch_io/Home_Screens/Categories.dart';
import 'package:fetch_io/Screens/ProductDetails.dart';
import 'package:fetch_io/model.dart';
import 'package:fetch_io/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 90,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: const TextField(
            decoration: InputDecoration(
                hintText: 'search product',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search_rounded,color: Colors.black,)
              // todo make it clickable

            ),
          ),
        ),
        actions: [
          IconButton(onPressed:(){},
              icon:const Icon(Icons.favorite_outline,color: Colors.black,)),
          //todo add chart number red dot with number
          IconButton(onPressed:(){},
              icon:const Icon(Icons.add_shopping_cart_outlined,color: Colors.black,))
          //todo add number icon
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
              child: Categories()
          ),
          Expanded(
            flex: 9,
            child: MasonryGridView.builder(
             crossAxisSpacing:0,
              mainAxisSpacing:0,
              gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: 20,
              itemBuilder: (context, index) {
                return  ImageCard(
                  modelData: ModelList[index],
                  //pass the model data to the image card
                  
                  //pass the model data as argument to the product detail page


                  
                  press: () {
                    Navigator.pushNamed(context, ProductDetails.routeName,
                        arguments: ModelList[index]);
                  },
            );
              },
            ),
          ),
        ],
      ),
    );
  }
}
class ImageCard extends StatelessWidget {
   const ImageCard({
     required this.press,
     required this.modelData}
       );

  final ModelData modelData;
  final GestureTapCallback press;


  //todo in the future i will change the look of this .
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:press ,
      child: SizedBox(
        child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15),
              vertical: getProportionateScreenHeight(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Material(
                 elevation: 9,
                 borderRadius: BorderRadius.circular(15),
                 child: Container(
                 decoration: BoxDecoration(

                     color: Colors.white30,
                     borderRadius: BorderRadius.circular(15)
                 ),
                     child: ClipRRect(
                         borderRadius: BorderRadius.circular(10),
                         child: Image.network(modelData.imageUrl,fit: BoxFit.fill,))
             ),

               ),
              const SizedBox(height: 15),

             Text(modelData.title),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(text:'TZS',style: TextStyle(
                        fontSize: getProportionateScreenWidth(11),
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                      TextSpan(text: modelData.price.toString(),
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight:FontWeight.bold,
                            color: Colors.black,
                          )
                      )
                    ],
                  ),
                  ),
                  Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(0)),
                      width: getProportionateScreenWidth(30),
                      height: getProportionateScreenHeight(30),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.favorite_outline,size: 20,)
                      //todo product is my favorite after a click

                  )
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }


}
