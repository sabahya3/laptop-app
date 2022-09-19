import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

goTo(BuildContext ctx, Widget page) {
  return Navigator.push(
      ctx,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 600),
        pageBuilder: (context, animation, secondaryAnimation) => FadeTransition(
          opacity: animation,
          child: page,
        ),
      ));
}
