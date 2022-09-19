import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/constants/color_palete.dart';
import '../../../utils/screen_size/screen_size.dart';
import '../../../utils/strings.dart';
import '../../home_screen/widgets/custom_text.dart';

class CustomTextWithDot extends StatefulWidget {
  const CustomTextWithDot({super.key});

  @override
  State<CustomTextWithDot> createState() => _CustomTextWithDotState();
}

class _CustomTextWithDotState extends State<CustomTextWithDot> {
  @override
  Widget build(BuildContext context) {
    double width = getWidth(context: context);
    double height = getHeight(context: context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.05, vertical: height * 0.02),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: violet,
            radius: width * 0.017,
          ),
          SizedBox(
            width: width * 0.03,
          ),
          SizedBox(
            width: width * 0.82,
            height: height * 0.09,
            child: SingleChildScrollView(
              child: CustomText(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  size: width * 0.045,
                  txt: testString),
            ),
          )
        ],
      ),
    );
  }
}
