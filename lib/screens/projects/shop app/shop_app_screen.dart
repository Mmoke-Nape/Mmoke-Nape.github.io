import 'dart:html';

import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_website/constants.dart';
import 'package:personal_website/models/product.dart';
import 'package:personal_website/responsive/responsive.dart';
import 'package:personal_website/widgets/consult_button.dart';
import 'package:personal_website/widgets/custom_appbar.dart';
import 'package:personal_website/widgets/list_of_socials.dart';
import 'package:personal_website/widgets/mobile_drawer.dart';
import 'package:personal_website/widgets/on_hover.dart';
import 'package:personal_website/widgets/starting_new_project_container.dart';

import '../../../constants/app_colors.dart';

class ShopAppPage extends StatelessWidget {
  const ShopAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> _screens = screens;
    var subHeadingStyle = Theme.of(context).textTheme.headline5!.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          // fontSize: 16,
        );
    const style = TextStyle(
      color: Colors.grey,
      fontSize: 16,
    );

    Size size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: MobileDrawer(),
        backgroundColor: Colors.black,
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              // const SizedBox(height: 30),
              CustomAppBar(
                  size: size,
                  isShopApp: true,
                  press: () {
                    if (_scaffoldKey.currentState!.isDrawerOpen) {
                      _scaffoldKey.currentState!.openEndDrawer();
                    } else {
                      _scaffoldKey.currentState!.openDrawer();
                    }
                  }),
              Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Row(
                    children: [
                      ShaderMask(
                        shaderCallback: (rect) {
                          return const LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [Colors.transparent, Colors.black],
                            stops: [.15, 1],
                          ).createShader(
                              Rect.fromLTRB(0, 0, rect.width, rect.height));
                        },
                        blendMode: BlendMode.dstIn,
                        child: Image.asset(
                          'assets/images/MockUps/Mockup.png',
                          alignment: Alignment.topCenter,
                          width: Responsive.isMobile(context)
                              ? size.width * .7
                              : size.width * .4,
                          height: size.height - 100,
                          fit: Responsive.isMobile(context)
                              ? BoxFit.fitWidth
                              : BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: size.width * .77,
                      height: size.height,
                      // color: Colors.green,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 0,
                            top: size.height * .5 - 100,
                            child: Container(
                              width: 1.5,
                              height: size.height * .5,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      AppColors.shopAppColor,
                                      Colors.transparent
                                    ],
                                    stops: [
                                      .7,
                                      1
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -4,
                            bottom: size.height * .5 + 100,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.shopAppColor,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              color: Colors.black26,
                              width: size.width * .75,
                              height: size.height - 100,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: size.height * .40 - 55),
                                    Text(
                                      'Shop App',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 30),
                                    const SizedBox(height: 30),
                                    const Text(
                                      'This is an ecommerce mobile application that allows users to buy or sell anything really 😁\nWherever you are — across fashion, toys, tech and home.',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(height: 40),
                                    Text(
                                      'How does it work?',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                            color: AppColors.shopAppColor,
                                            // fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1,
                                          ),
                                    ),
                                    const SizedBox(height: 25),
                                    SizedBox(
                                      height: size.height * .9,
                                      child: LiveList.options(
                                        // shrinkWrap: true,
                                        options: options,

                                        // Like ListView.builder, but also includes animation property
                                        itemBuilder: (
                                          BuildContext context,
                                          int index,
                                          Animation<double> animation,
                                        ) =>
                                            FadeTransition(
                                          opacity: Tween<double>(
                                            begin: 0,
                                            end: 1,
                                          ).animate(animation),
                                          // And slide transition
                                          child: SlideTransition(
                                            position: Tween<Offset>(
                                              begin: const Offset(0, -0.1),
                                              end: Offset.zero,
                                            ).animate(animation),
                                            // Paste you Widget
                                            child: ShopAppProductDisplay(
                                              size: size,
                                              screen: _screens[index],
                                            ),
                                          ),
                                        ),

                                        // Other properties correspond to the
                                        // `ListView.builder` / `ListView.separated` widget
                                        scrollDirection: Axis.horizontal,
                                        itemCount: _screens.length,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Text(
                                      'Made with',
                                      style: subHeadingStyle,
                                    ),
                                    const SizedBox(height: 25),
                                    SizedBox(
                                      height: 70,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icons/flutter-color.svg',
                                                height: 30,
                                              ),
                                              const Text('Flutter',
                                                  style: style),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icons/firebase.svg',
                                                color: AppColors.shopAppColor,
                                                height: 30,
                                              ),
                                              const Text('Firebase',
                                                  style: style),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icons/dart.svg',
                                                height: 30,
                                              ),
                                              const Text('Dart', style: style),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Text('Features summary',
                                        style: subHeadingStyle),
                                    const SizedBox(height: 25),
                                    const Text(
                                      '- Authentication: Signin & Login',
                                      style: style,
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      '- Database utilization',
                                      style: style,
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      '- Full CRUD funtionality ',
                                      style: style,
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      '- Auto Login',
                                      style: style,
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      '- Auto Logout function after period of  inactivity',
                                      style: style,
                                    ),
                                    const SizedBox(width: 40),
                                    // const SizedBox(width: 50),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // const SizedBox(width: 40),
                        ],
                      ),
                    ),
                  ),
                  // Positioned(
                  //   top: 0,
                  // child: CustomAppBar(
                  //   size: size,
                  //   isShopApp: true,
                  //   ),
                  if (Responsive.isMobile(context))
                    Positioned(
                      top: 20, //size.height * .2,
                      left: 20, //size.width * .1,
                      child: BackButton(
                        color: Colors.white,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopAppProductDisplay extends StatelessWidget {
  const ShopAppProductDisplay({
    Key? key,
    required this.size,
    required this.screen,
  }) : super(key: key);

  final Size size;
  final Product screen;

  @override
  Widget build(BuildContext context) {
    var subHeadingStyle = Theme.of(context).textTheme.headline5!.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          // fontSize: 16,
        );
    const style = TextStyle(
      color: Colors.grey,
      fontSize: 16,
    );
    var featureStyle = TextStyle(
      color: AppColors.shopAppColor.withOpacity(.7),
      fontSize: 18,
    );
    return Container(
      margin: const EdgeInsets.only(right: 50),
      child: Column(
        // mainAxisAlignment:
        // MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            height: size.height * .6,
            width: Responsive.isMobile(context)
                ? size.width * .9
                : size.width * .2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              screen.image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: Responsive.isMobile(context)
                ? size.width * .8
                : size.width * .2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  screen.title,
                  style: subHeadingStyle,
                ),
                const SizedBox(height: 10),
                Text(
                  screen.description,
                  style: style,
                ),
                const SizedBox(height: 10),
                Text(
                  'Features',
                  style: featureStyle,
                ),
                const SizedBox(height: 10),
                for (String text in screen.features)
                  Text(
                    text,
                    style: style,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
