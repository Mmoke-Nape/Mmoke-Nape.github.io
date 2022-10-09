import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ListOfSocials extends StatelessWidget {
  const ListOfSocials({
    Key? key,
  }) : super(key: key);

  static const String linkedin =
      'https://www.linkedin.com/in/mmoke-nape-a573a3202';
  static const String git = 'https://github.com/Mmoke-Nape';
  static const String instagram = 'https://www.instagram.com/mmoke_nape/';
  static const String facebook = 'https://www.facebook.com/mmoke.nape.92';
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      // width: size.width * .3,
      child: Row(
        children: [
          IconButton(
            onPressed: () => _launchUrl(linkedin),
            icon: SvgPicture.asset(
              'assets/icons/linkedin_outline.svg',
              color: Theme.of(context).primaryColor,
            ),
          ),
          IconButton(
            onPressed: () => _launchUrl(git),
            icon: SvgPicture.asset(
              'assets/icons/github_cat.svg',
              color: Theme.of(context).primaryColor,
            ),
          ),
          IconButton(
            onPressed: () => _launchUrl(instagram),
            icon: SvgPicture.asset(
              'assets/icons/instagram.svg',
              color: Theme.of(context).primaryColor,
            ),
          ),
          IconButton(
            onPressed: () => _launchUrl(facebook),
            icon: SvgPicture.asset(
              'assets/icons/facebook.svg',
              color: Theme.of(context).primaryColor,
            ),
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
