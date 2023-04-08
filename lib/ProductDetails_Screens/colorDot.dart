
import 'package:fetch_io/size_config.dart';
import 'package:flutter/material.dart';
import 'package:fetch_io/model.dart';

class ColorDots extends StatelessWidget {
  const ColorDots ({Key? key,
    required this.modelData})
      : super(key: key);

  final ModelData modelData;

  @override
  Widget build(BuildContext context) {
    // Now this is fixed and only for demo
    int selectedColor = 3;
    return Container(
      child: Row(
        children: [
          ...List.generate(
              modelData.colors.length,
                  (index) => ColorDot(
                color: modelData.colors[index],))
        ],
      )
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
