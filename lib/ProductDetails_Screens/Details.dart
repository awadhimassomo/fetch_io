import 'package:fetch_io/size_config.dart';
import 'package:flutter/material.dart';
import 'package:fetch_io/model.dart';

class Details extends StatelessWidget {
  const Details({Key? key,required this.modelData}
      ) : super(key: key);
  final ModelData modelData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      padding: EdgeInsets.only(top:getProportionateScreenWidth(20)),
      decoration:const  BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10)
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(modelData.title),
              ),

              Padding(
                padding: const EdgeInsets.only(right:16),
                child: Container(

                  height: getProportionateScreenWidth(50),
                  width: getProportionateScreenWidth(100),
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                    color:Colors.orange,
                  ),
                  child: Center(
                    child: Text(modelData.price.toString(),style:const TextStyle(
                      color: Colors.white,fontWeight:FontWeight.w400
                    ),),
                  ),
                ),
              )
            ],
          ),
       const SizedBox(
         height:2,
       ),
          RichText(maxLines: 4,overflow: TextOverflow.ellipsis,
            text: TextSpan(children:
            [TextSpan(text: modelData.discription,),]),
           ),
          Row(
            children: [
             Container(
               padding: const EdgeInsets.all(4),
               decoration: BoxDecoration(
                 color: Colors.grey.shade200,
                 borderRadius: BorderRadius.circular(8),
               ),
             )
            ],
          )
        ],
      ),
    );
  }
}