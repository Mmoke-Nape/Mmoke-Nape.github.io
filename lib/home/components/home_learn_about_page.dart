import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:personal_website/home/components/home_about_clipper.dart';
import 'package:personal_website/widgets/send_email_button.dart';
import 'package:personal_website/widgets/shoe_onhover.dart';
import 'package:personal_website/widgets/starting_new_project_container.dart';
import 'package:personal_website/widgets/underlined_text_arrow.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/app_colors.dart';
import '../../widgets/contact_full_triangle_clipper.dart';
import '../../widgets/footer.dart';

class HomeLearnAboutPage extends StatelessWidget {
  const HomeLearnAboutPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 1.7,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [AppColors.black, Colors.purple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      // color: black,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipPath(
            clipper: HomeAboutClipper(),
            child: Container(
              clipBehavior: Clip.none,
              width: size.width * .9,
              height: size.height,
              // color: Colors.green,
              color: AppColors.black,
            ),
          ),
          Positioned(
            top: 200,
            right: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Learn a little \nbit about my\nskills and',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
            top: -50,
            left: size.width * .1,
            child: StartingProjectContainer(size: size),
          ),
          Positioned(
            bottom: size.height * .7,
            left: size.width * .2,
            child: Image.asset(
              'assets/images/step2.png',
              height: size.height * .9,
            ),
          ),
          Positioned(
            bottom: size.height * .7,
            left: size.width * .05,
            child: Image.asset(
              'assets/images/rs6.png',
              width: size.width * .4,
            ),
          ),
          Positioned(
            top: size.height * .4,
            left: size.width * .3,
            child: GestureDetector(
              onTap: () =>
                  _launchUrl('https://www.instagram.com/dripout_customs/'),
              child: ShoeOnHover(
                builder: (isHovering) {
                  return Transform.rotate(
                    angle: -math.pi / 12,
                    child: Image.asset(
                      'assets/images/Shoe.png',
                      width: size.width * .4,
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: size.height * .3,
            left: size.width * .1,
            child: SvgPicture.asset(
              'assets/icons/firebase.svg',
              color: Colors.amber,
              height: 150,
            ),
          ),
          Positioned(
            top: size.height * .8,
            left: size.width * .5,
            child: SvgPicture.asset(
              'assets/icons/mysql.svg',
              width: 100,
            ),
          ),
          Positioned(
            top: size.height * .2,
            left: size.width * .5,
            child: SvgPicture.asset(
              'assets/icons/python.svg',
              height: 150,
            ),
          ),
          Positioned(
            top: size.height * .75,
            left: size.width * .6,
            child: SvgPicture.asset(
              'assets/icons/flutter-color.svg',
              height: 200,
            ),
          ),
          Positioned(
            bottom: size.height * .2,
            left: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                Text(
                  "Let's work together.",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: size.width * .32,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            // color: Colors.grey[350],
                            color: Colors.white60,
                            fontSize: 18,
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
                const SendMeAnEmailButton()
              ],
            ),
          ),
          Positioned(
            bottom: size.height * .2,
            right: size.width * .07,
            child: Transform.rotate(
              angle: -math.pi * 12,
              child: ClipPath(
                // clipBehavior: Clip.none,
                clipper: ContactFullTriangleClipper(),
                child: Container(
                  color: Colors.teal,
                  width: size.width * .35,
                  height: size.height * .45,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: size.height * .2,
            right: size.width * .1,
            child: Container(
              // color: Colors.teal,
              width: size.width * .3,
              height: size.height * .4,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: 0,
                    child: Image.asset('/images/me/half_turn.png',
                        height: size.height * .5, fit: BoxFit.fitHeight),
                  ),
                ],
              ),
            ),
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

void _launchUrl(String url) async {
  if (!await launch(
    url,
    forceSafariVC: false,
    forceWebView: true,
    enableJavaScript: true,
  )) throw 'Could not launch URL';
}
