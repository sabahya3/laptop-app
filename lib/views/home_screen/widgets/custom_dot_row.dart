import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/constants/color_palete.dart';
import '../../../utils/screen_size/screen_size.dart';

class CustomDotRow extends StatelessWidget {
  const CustomDotRow({super.key});

  @override
  Widget build(BuildContext context) {
    double width = getWidth(context: context);
    double height = getHeight(context: context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          7,
          (index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.006),
                child: CircleAvatar(
                  radius: index == 3 ? width * 0.015 : width * 0.011,
                  backgroundColor: index == 3 ? violet : Colors.grey,
                ),
              )),
    );
  }
}
