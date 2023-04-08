import 'package:fetch_io/model.dart';
import 'package:fetch_io/size_config.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount:ModelList.length,
          itemBuilder:(context,index){
            return CateCard(
              modelData:ModelList[index],
            );
          }
      );
  }
}
class CateCard extends StatelessWidget {
  CateCard({required this.modelData});
 final ModelData modelData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          //here you style children
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),

          child: Text(modelData.title,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(12)
            ),),
        ),
      ),
    );
  }
}

