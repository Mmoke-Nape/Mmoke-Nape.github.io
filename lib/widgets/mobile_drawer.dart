import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:personal_website/responsive/responsive.dart';
import 'package:personal_website/widgets/footer.dart';
import 'package:personal_website/widgets/list_of_socials.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import '../constants/app_colors.dart';
import 'nav_button.dart';

class MobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .3,
            child: SvgPicture.asset(
              'assets/icons/personal Logo.svg',
              height: 65,
              color: Get.currentRoute == '/work/shop-app'
                  ? AppColors.shopAppColor
                  : Theme.of(context).primaryColor,
            ),
          ),
          Container(
            // color: Colors.green,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: const ListOfSocials(),
          ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * .2,
          // ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed('/', arguments: {'page': 'home'}),
                    child: NavButton(
                      isShopApp:
                          Get.currentRoute == '/work/shop-app' ? true : false,
                      page: 'home',
                      text: 'Home',
                    ),
                  ),
                  GestureDetector(
                    onTap: () =>
                        Get.toNamed('/about', arguments: {'page': 'about'}),
                    child: NavButton(
                      isShopApp:
                          Get.currentRoute == '/work/shop-app' ? true : false,
                      page: 'about',
                      text: 'About',
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _openEmail('mailto:napemmoke@gmail.com?'),
                    child: NavButton(
                      isShopApp:
                          Get.currentRoute == '/work/shop-app' ? true : false,
                      page: 'contact',
                      text: 'Contact',
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}

void _openEmail(String _url) async {
  if (!await launch(_url)) throw 'Could not Send Email';
}
