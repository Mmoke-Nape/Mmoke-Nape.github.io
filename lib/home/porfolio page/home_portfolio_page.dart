import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/constants.dart';
import 'package:personal_website/constants/app_routes.dart';
import 'package:personal_website/responsive/responsive.dart';
import 'package:personal_website/widgets/on_hover.dart';
import 'package:personal_website/widgets/project_display.dart';
import 'package:personal_website/widgets/underlined_text_arrow.dart';

import '../../constants/app_colors.dart';
import 'components/project_display_clipper.dart';

class HomePortfolioPage extends StatelessWidget {
  const HomePortfolioPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      // width: size.width,
      color: Color(0xff0a080d),
      child: Stack(
        children: [
          Positioned(
            top: Responsive.isMobile(context) ? 30 : 90,
            left: Responsive.isMobile(context) ? 30 : 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        child: Divider(
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Portfolio',
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * .02),
                Text(
                  'All Creative Works,\nSelected Projects.',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.white,
                        fontSize: Responsive.isMobile(context) ? 30 : null,
                      ),
                ),
                SizedBox(height: size.height * .04),
                SizedBox(
                  width: Responsive.isMobile(context)
                      ? size.width * .5
                      : size.width * .25,
                  child: Text(
                    'A culmination of projects I developed or was heavily involved in',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.grey[700], letterSpacing: 3),
                  ),
                ),
                SizedBox(height: size.height * .04),
                UnderlinedTextArrow(
                  text: "More to come...",
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),

          Positioned(
            top: size.height * .2,
            right: size.width * .13,
            child: ProjectDisplayItem(
              title: 'Shop App.',
              type: 'Mobile App, Development',
              image: 'assets/images/MockUps/Mockup.png',
              c1: AppColors.shopAppColor,
              c2: Colors.orange.shade900,
              press: () {
                Get.toNamed(AppRoutes.shopAppRoute);
              },
            ),
          ),
          Positioned(
            bottom: size.height * .05,
            left: size.width * .32,
            child: ProjectDisplayItem(
              title: 'WIBSA.',
              type: 'Web App, Development',
              image: '/images/MockUps/wimbsa/cover.png',
              c1: AppColors.wimbsa,
              c2: Colors.white,
              press: () {},
            ),
          ),
          // ProjectDisplay(
          //   image: 'assets/images/MockUps/Mockup.png',
          //   size: size,
          //   top: Responsive.isMobile(context)
          //       ? size.height * .4
          //       : size.height * .15,
          //   right: Responsive.isMobile(context) ? null : size.width * .1,
          //   left: Responsive.isMobile(context) ? 0 : null,
          // ),
        ],
      ),
    );
  }
}

class ProjectDisplayItem extends StatelessWidget {
  const ProjectDisplayItem({
    Key? key,
    required this.title,
    required this.type,
    required this.image,
    required this.c1,
    required this.c2,
    required this.press,
  }) : super(key: key);
  final String title;
  final String type;
  final String image;
  final Color c1;
  final Color c2;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        height: size.height * .5,
        width: size.width * .25,
        color: AppColors.grey,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.isMobile(context) ? 20 : 30,
                  vertical: Responsive.isMobile(context) ? 10 : 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    type,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: AppColors.lighterBlack),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
            ClipPath(
              clipper: ProjectDisplayClipper(),
              child: Container(
                // color: Colors.green,
                height: size.height * .5,
                width: size.width * .25,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [c1, c2],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              child: Image.asset(image,
                  width: Responsive.isMobile(context)
                      ? size.width * .5
                      : size.width * .25,
                  fit: BoxFit.fitWidth),
            ),
          ],
        ),
      ),
    );
  }
}
