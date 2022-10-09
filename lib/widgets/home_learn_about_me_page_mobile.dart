import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:personal_website/widgets/footer.dart';
import 'package:personal_website/widgets/send_email_button.dart';
import 'package:personal_website/widgets/underlined_text_arrow.dart';

import '../constants.dart';
import '../constants/app_colors.dart';
import 'contact_full_triangle_clipper.dart';

class HomeLearnAboutMePageMobile extends StatelessWidget {
  const HomeLearnAboutMePageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize = 15;
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 2,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.black, Colors.purple],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 1],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: size.height * .1,
            right: size.width * .1,
            child: SvgPicture.asset(
              'assets/icons/flutter-color.svg',
              height: 150,
            ),
          ),
          Positioned(
            top: size.height * .2,
            left: size.width * .03,
            child: SvgPicture.asset(
              'assets/icons/java.svg',
              height: 150,
            ),
          ),
          Positioned(
            height: size.height * .2,
            left: 0,
            child: Transform.rotate(
              angle: -30,
              child: Image.asset(
                'assets/images/rs6.png',
                width: size.width * .5,
              ),
            ),
          ),
          Positioned(
            top: size.height * .1,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/kyrie.png',
              height: size.height * .9,
            ),
          ),
          Positioned(
            top: size.height * .55,
            right: size.width * .1,
            child: SvgPicture.asset(
              'assets/icons/mysql.svg',
              width: 100,
            ),
          ),
          Positioned(
            top: size.height * .8,
            left: size.width * .05,
            child: SvgPicture.asset(
              'assets/icons/python.svg',
              height: 150,
            ),
          ),
          Positioned(
            // top: size.height * .45,
            right: size.width * .1,
            top: size.height * .7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.black38,
                  width: size.width * .6,
                  child: Text(
                    'Learn a little bit about my skills and',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed('/about'),
                  child: const UnderlinedTextArrow(
                    text: 'Me',
                    color: Colors.teal,
                    textSize: 30,
                    iconSize: 27,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: size.height * .45,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 30,
                      child: Divider(
                        color: Colors.white60,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text("Let's work together.",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.white, fontSize: 22)),
                const SizedBox(height: 20),
                SizedBox(
                  width: size.width * .6,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            // color: Colors.grey[350],
                            color: Colors.white60,
                            fontSize: 15,
                            letterSpacing: 3,
                          ),
                      children: const [
                        TextSpan(
                            text:
                                "If you'd like to hire me or talk about a project you want help with, just drop me a message at"),
                        TextSpan(
                          text: " napemmoke@gmail.com",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        TextSpan(
                            text:
                                ". I'm currently available for any internships, startup projects and freelance work."),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const SendMeAnEmailButton(),
              ],
            ),
          ),
          Positioned(
            bottom: size.height * .1,
            right: 0,
            left: 0,
            child: Transform.rotate(
              angle: -math.pi * 12,
              child: ClipPath(
                // clipBehavior: Clip.none,
                clipper: ContactFullTriangleClipper(),
                child: Container(
                  color: Colors.teal,
                  width: size.width * .1,
                  height: size.height * .2,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: size.height * .07,
            right: 0,
            left: 0,
            child: Image.asset('assets/images/me/half_turn.png',
                height: size.height * .3, fit: BoxFit.fitHeight),
          ),
          const Positioned(
            bottom: 0,
            child: Footer(),
          ),
        ],
      ),
    );
  }
}
