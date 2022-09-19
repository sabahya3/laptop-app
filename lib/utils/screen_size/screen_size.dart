import 'package:flutter/cupertino.dart';

double getHeight({required BuildContext context}) {
  return MediaQuery.of(context).size.height;
}

double getWidth({required BuildContext context}) {
  return MediaQuery.of(context).size.width;
}
