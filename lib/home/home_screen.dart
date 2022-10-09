import 'dart:html';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:personal_website/constants.dart';
import 'package:personal_website/home/components/home_about_clipper.dart';
import 'package:personal_website/responsive/responsive.dart';
import 'package:personal_website/widgets/consult_button.dart';
import 'package:personal_website/widgets/contact_full_triangle_clipper.dart';
import 'package:personal_website/widgets/custom_appbar.dart';
import 'package:personal_website/widgets/footer.dart';
import 'package:personal_website/home/components/home_learn_about_page.dart';
import 'package:personal_website/widgets/home_learn_about_me_page_mobile.dart';
import 'package:personal_website/widgets/list_of_socials.dart';
import 'package:personal_website/widgets/mobile_drawer.dart';
import 'package:personal_website/widgets/project_display.dart';
import 'package:personal_website/widgets/starting_new_project_container.dart';
import 'package:personal_website/widgets/triangle_clipper.dart';
import 'package:personal_website/widgets/underlined_text_arrow.dart';

import 'components/home_page_one_text_column.dart';
import 'porfolio page/home_portfolio_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: MobileDrawer(),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                isShopApp: false,
                size: size,
                press: () => _scaffoldKey.currentState!.openDrawer(),
              ),
              // const SizedBox(height: 30),
              Container(
                color: Colors.black,
                height: Responsive.isMobile(context)
                    ? size.height - 70
                    : size.height - 100,
                width:
                    Responsive.isMobile(context) ? size.width : size.width * .8,
                // color: Colors.blue,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: Responsive.isMobile(context)
                          ? size.height * .05
                          : size.height * .1,
                      right: Responsive.isMobile(context)
                          ? size.width * .15
                          : null,
                      child: Text(
                        Responsive.isMobile(context)
                            ? 'Mmoke\n     Nape'
                            : 'Mmoke\n  Nape',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: Responsive.isMobile(context) ? 40 : 155,
                            letterSpacing: .1),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: Responsive.isMobile(context)
                          ? null
                          : size.width * .23,
                      left: Responsive.isMobile(context)
                          ? -size.width * .55
                          : null,
                      child: Container(
                        height: size.height * .93,
                        child: Image.asset(
                          'assets/images/me/me_again.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    if (!Responsive.isMobile(context))
                      const Positioned(
                        top: 110,
                        right: 57,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.teal,
                        ),
                      ),
                    if (!Responsive.isMobile(context))
                      Positioned(
                        top: 70,
                        right: 60,
                        child: Transform.rotate(
                          angle: -10,
                          child: ClipPath(
                            clipper: TriangleClipper(),
                            child: Container(
                              height: 80,
                              width: 140,
                              color: const Color(0xff4f4346),
                            ),
                          ),
                        ),
                      ),
                    Positioned(
                        top: Responsive.isMobile(context)
                            ? size.height * .25
                            : 260,
                        right: Responsive.isMobile(context)
                            ? size.width * .1
                            : -size.width * .02,
                        child: HomePageOneTextColumn(size: size)),
                    Positioned(
                      bottom: Responsive.isMobile(context) ? 10 : 100,
                      left: 0,
                      child: const ListOfSocials(),
                    ),
                  ],
                ),
              ),
              const HomePortfolioPage(),
              Responsive.isMobile(context)
                  ? const HomeLearnAboutMePageMobile()
                  : HomeLearnAboutPage(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
