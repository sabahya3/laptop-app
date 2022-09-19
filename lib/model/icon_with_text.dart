import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWithText {
  String text;
  IconData icon;
  IconWithText({required this.icon, required this.text});
}

List<IconWithText> iconWithTextList = [
  IconWithText(icon: FontAwesomeIcons.home, text: 'HomePage'),
  IconWithText(icon: FontAwesomeIcons.hand, text: 'Best Deals'),
  IconWithText(icon: FontAwesomeIcons.bagShopping, text: 'My Cart'),
  IconWithText(icon: FontAwesomeIcons.heart, text: 'Favourite'),
  IconWithText(icon: FontAwesomeIcons.bell, text: 'Notifications'),
  IconWithText(icon: FontAwesomeIcons.star, text: 'Rate Us'),
  IconWithText(icon: FontAwesomeIcons.info, text: 'Help Center'),
  IconWithText(icon: FontAwesomeIcons.signOut, text: 'Sign Out')
];
