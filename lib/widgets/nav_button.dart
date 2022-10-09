import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../constants/app_colors.dart';
import 'on_hover.dart';

class NavButton extends StatefulWidget {
  const NavButton({
    Key? key,
    required this.text,
    required this.page,
    required this.isShopApp,
  }) : super(key: key);

  final String text;
  final String page;
  final bool isShopApp;
  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    final color = widget.isShopApp
        ? AppColors.shopAppColor
        : Theme.of(context).primaryColor;
    if (Get.currentRoute == '/' && widget.text == 'Home') {
      return Text(
        widget.text,
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(fontSize: 20, color: color),
      );
    }
    if (Get.currentRoute == '/about' && widget.text == 'About') {
      return Text(
        widget.text,
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(fontSize: 20, color: color),
      );
    }
    return OnHover(
      isNav: true,
      builder: (isHovered) {
        return Text(
          widget.text,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontSize: 20, color: isHovered ? color : Colors.white),
        );
      },
    );
  }
}
