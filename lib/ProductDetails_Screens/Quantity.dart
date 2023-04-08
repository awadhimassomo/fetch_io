import 'package:fetch_io/size_config.dart';
import 'package:flutter/material.dart';

class Quantity extends StatelessWidget {
  int _count=0;
  @override

  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Quantity',style:
          TextStyle(color:Colors.black,fontSize: 14 ,fontWeight:FontWeight.bold),),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 2),
                  padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                height:getProportionateScreenWidth(60),
                width:getProportionateScreenWidth(150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                      color: Colors.black
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        color: Colors.white
                      ),
                      child: InkWell(child: Icon(Icons.add,size: getProportionateScreenWidth(30)),
                      onTap:(){

                      },)
                    ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                ),
                //todo function ukibonyeza iongeze idadi
                child:  Center(child: Text("$_count",
                  style: const TextStyle(color: Colors.white,fontSize: 24),)),),

                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.remove,
                        size: getProportionateScreenWidth(30),),
                    ),
                  ],
                ),
              ),
              const Text('100 + available',
                style: TextStyle(fontSize: 12,color: Colors.grey),)
            ],
          ),
        ],
      ),
    );

  }
}
