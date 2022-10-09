import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:personal_website/constants.dart';
import 'package:personal_website/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_colors.dart';
import 'nav_button.dart';
import 'on_hover.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.size,
    required this.isShopApp,
    required this.press,
  }) : super(key: key);

  final Size size;
  final bool isShopApp;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context) ? 20 : 30,
          vertical: Responsive.isMobile(context) ? 10 : 20),
      height: Responsive.isMobile(context) ? 70 : 100,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.toNamed('/', arguments: {'page': 'home'}),
            child: SvgPicture.asset(
              'assets/icons/personal Logo.svg',
              height: Responsive.isMobile(context) ? 50 : 60,
              color: isShopApp
                  ? AppColors.shopAppColor
                  : Theme.of(context).primaryColor,
            ),
          ),
          if (Responsive.isMobile(context))
            GestureDetector(
              onTap: press,
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: Responsive.isMobile(context) ? 40 : 60,
                color: isShopApp
                    ? AppColors.shopAppColor
                    : Theme.of(context).primaryColor,
              ),
            ),
          if (!Responsive.isMobile(context))
            Container(
              // color: Colors.amber,
              width: size.width * .4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed('/', arguments: {'page': 'home'}),
                    child: NavButton(
                      isShopApp: isShopApp,
                      page: 'home',
                      text: 'Home',
                    ),
                  ),
                  GestureDetector(
                    onTap: () =>
                        Get.toNamed('/about', arguments: {'page': 'about'}),
                    child: NavButton(
                      isShopApp: isShopApp,
                      page: 'about',
                      text: 'About',
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _openEmail('mailto:napemmoke@gmail.com?'),
                    child: NavButton(
                      isShopApp: isShopApp,
                      page: 'contact',
                      text: 'Contact',
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

void _openEmail(String _url) async {
  if (!await launch(_url)) throw 'Could not Send Email';
}
