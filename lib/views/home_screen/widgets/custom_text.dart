import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {super.key,
      required this.color,
      required this.fontWeight,
      required this.size,
      required this.txt});
  double size;
  Color color;
  String txt;
  FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight ?? FontWeight.normal),
    );
  }
}
