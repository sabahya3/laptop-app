import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laptop_app/model/icon_with_text.dart';
import 'package:laptop_app/services/navigation_service/navigation_service.dart';
import 'package:laptop_app/utils/constants/color_palete.dart';
import 'package:laptop_app/utils/constants/const_lists.dart';
import 'package:laptop_app/utils/constants/constant_widget_functions.dart';
import 'package:laptop_app/utils/screen_size/screen_size.dart';
import 'package:laptop_app/utils/strings.dart';
import 'package:laptop_app/views/details_screen/details_screen.dart';
import 'package:laptop_app/views/home_screen/widgets/custom_dot_row.dart';
import 'package:laptop_app/views/home_screen/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
  }

  toggleAnimation() {
    controller.isDismissed ? controller.forward() : controller.reverse();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = getWidth(context: context);
    double height = getHeight(context: context);

    return Stack(
      children: [
        Scaffold(
          body: Container(
            width: width,
            height: height,
            color: violet,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: height * 0.09, left: width * 0.07),
                  height: height * 0.09,
                  width: width * 0.22,
                  decoration: BoxDecoration(
                      borderRadius: getRadius(r: width * 0.04),
                      image: const DecorationImage(
                          image: NetworkImage(girlImg), fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.04),
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.05,
                    ),
                    child: const Text('Welcome Ahmed'),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                ...List.generate(
                    8,
                    (index) => ListTile(
                        onTap: toggleAnimation,
                        leading: Icon(
                          iconWithTextList[index].icon,
                          color: Colors.white,
                        ),
                        title: DefaultTextStyle(
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: width * 0.05,
                          ),
                          child: Text(iconWithTextList[index].text),
                        )))
              ],
            ),
          ),
        ),
        // animation values , start 0.0 , end 1.0
        //scaleY - > start = 0.0 * 0.9 -> 0.0 , end 1.0 *0.9=0.9
        AnimatedBuilder(
          animation: controller,
          builder: (context, child) => Transform(
            transform: Matrix4.identity()
              ..scale(1 - (controller.value * 0.06))
              ..translate(controller.value * width * 0.55,
                  controller.value * height * 0.05),
            child: ClipRRect(
              borderRadius: getRadius(r: width * 0.04),
              child: Scaffold(
                body: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.08,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Material(
                              elevation: 10,
                              borderRadius: getRadius(r: width * 0.06),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.02),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: getRadius(r: width * 0.06),
                                  color: grey,
                                ),
                                width: width * .75,
                                height: height * 0.08,
                                child: const TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Search',
                                      fillColor: grey,
                                      filled: true,
                                      prefixIcon: Icon(Icons.search)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Material(
                              elevation: 10,
                              borderRadius: getRadius(r: width * 0.06),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: getRadius(r: width * 0.06),
                                  color: grey,
                                ),
                                width: width * .15,
                                height: height * 0.08,
                                child: InkWell(
                                  onTap: toggleAnimation,
                                  child: const Icon(
                                    FontAwesomeIcons.sliders,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.06,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: getRadius(r: width * 0.07),
                          color: violet,
                        ),
                        width: width * 0.92,
                        height: height * 0.24,
                        child: Stack(clipBehavior: Clip.none, children: [
                          Positioned(
                              right: width * -0.091,
                              bottom: height * 0.0,
                              child: Image.asset(
                                'assets/images/girl.png',
                                height: height * 0.28,
                              )),
                          Positioned(
                              top: height * 0.06,
                              left: width * 0.05,
                              child: Text(
                                'Flat 10% Off',
                                style: TextStyle(
                                    fontSize: width * 0.06,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                              top: height * 0.11,
                              left: width * 0.05,
                              child: Text(
                                'ON LAPTOPS',
                                style: TextStyle(
                                    fontSize: width * 0.05,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              )),
                          Positioned(
                              left: width * 0.05,
                              bottom: height * 0.032,
                              child: Container(
                                alignment: Alignment.center,
                                width: width * 0.28,
                                height: height * 0.052,
                                decoration: BoxDecoration(
                                    borderRadius: getRadius(r: width * 0.04),
                                    gradient: const LinearGradient(colors: [
                                      Color(0xff252C9F),
                                      Color(0xff890175),
                                      Color(0xffEF5C5D),
                                    ])),
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(
                                      fontSize: width * 0.04,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal),
                                ),
                              ))
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const CustomDotRow(),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                color: violet,
                                fontWeight: FontWeight.bold,
                                size: width * 0.06,
                                txt: 'Popular Now'),
                            CustomText(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                size: width * 0.05,
                                txt: 'View all')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Wrap(
                        spacing: width * 0.02,
                        // runSpacing: height * 0.001,
                        children: List.generate(
                            4,
                            (index) => Container(
                                  color: Colors.transparent,
                                  height: height * 0.36,
                                  child: Column(
                                    children: [
                                      Material(
                                        elevation: 5,
                                        borderRadius:
                                            getRadius(r: width * 0.02),
                                        child: GestureDetector(
                                          onTap: () {
                                            goTo(
                                                context,
                                                DetailsScreen(
                                                  image:
                                                      'assets/images/$index.png',
                                                ));
                                          },
                                          child: Container(
                                            // ignore: sort_child_properties_last
                                            child: Stack(children: [
                                              Positioned(
                                                  right: width * 0.02,
                                                  top: height * 0.02,
                                                  child: Icon(
                                                    index % 2 == 0
                                                        ? FontAwesomeIcons
                                                            .solidHeart
                                                        : FontAwesomeIcons
                                                            .heart,
                                                    color: index % 2 == 0
                                                        ? Colors.black
                                                        : Colors.black,
                                                  )),
                                              Positioned(
                                                  left: width * 0.02,
                                                  top: height * 0.05,
                                                  child: Hero(
                                                    tag:
                                                        'assets/images/$index.png',
                                                    child: Image.asset(
                                                      'assets/images/$index.png',
                                                      width: width * 0.42,
                                                      height: height * 0.20,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ))
                                            ]),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  getRadius(r: width * 0.02),
                                              color: const Color(0xffF2F2F2),
                                            ),
                                            height: height * 0.27,
                                            width: width * .45,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      SizedBox(
                                        width: width * 0.45,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: width * 0.02,
                                            ),
                                            CustomText(
                                                color: violet,
                                                fontWeight: FontWeight.bold,
                                                size: width * 0.04,
                                                txt: '\$153.5'),
                                            const Spacer(),
                                            CustomText(
                                                color: violet,
                                                fontWeight: FontWeight.bold,
                                                size: width * 0.04,
                                                txt: '⭐4.5'),
                                            SizedBox(
                                              width: width * 0.02,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.45,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: width * 0.02),
                                          child: CustomText(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              size: width * 0.04,
                                              txt: 'Hp Laptop 123'),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                      )
                    ],
                  ),
                ),
                bottomNavigationBar: Padding(
                  padding: EdgeInsets.all(height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                        4,
                        (index) => Icon(
                              navIcons[index],
                              color: index == 0 ? violet : Colors.grey,
                            )),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
