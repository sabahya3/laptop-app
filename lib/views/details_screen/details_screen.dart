import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laptop_app/utils/constants/color_palete.dart';
import 'package:laptop_app/utils/strings.dart';
import 'package:laptop_app/views/details_screen/widgets/custom_text_with_dot.dart';
import 'package:laptop_app/views/home_screen/widgets/custom_text.dart';

import '../../utils/screen_size/screen_size.dart';
import '../home_screen/widgets/custom_dot_row.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({super.key, required this.image});
  String image;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = getWidth(context: context);
    double height = getHeight(context: context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: CustomText(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            size: width * 0.056,
            txt: 'Hp Laptop 123'),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.solidHeart,
                color: Colors.grey,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: height * 0.50,
              width: width,
              color: appBarColor,
              child: Column(
                children: [
                  Hero(
                    tag: widget.image,
                    child: Image.asset(
                      widget.image,
                      height: height * .40,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const CustomDotRow(),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      color: violet,
                      fontWeight: FontWeight.bold,
                      size: width * 0.06,
                      txt: 'Hp Laptop 123'),
                  CustomText(
                      color: violet,
                      fontWeight: FontWeight.bold,
                      size: width * 0.07,
                      txt: '\$153.5')
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      size: width * 0.056,
                      txt: '⭐ 4.5 '),
                  CustomText(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      size: width * 0.06,
                      txt: '125+ Reviews')
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            ...List.generate(3, (index) => const CustomTextWithDot())
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: height * 0.02),
        child: SizedBox(
          width: width * 0.95,
          height: height * 0.08,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: violet),
              onPressed: () {},
              child: CustomText(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  size: width * 0.05,
                  txt: 'Buy Now')),
        ),
      )),
    );
  }
}
