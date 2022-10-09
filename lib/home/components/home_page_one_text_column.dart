import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/responsive/responsive.dart';
import 'package:personal_website/widgets/underlined_text_arrow.dart';

class HomePageOneTextColumn extends StatelessWidget {
  const HomePageOneTextColumn({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isMobile(context) ? size.width * .56 : size.width * .24,
      // color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                Responsive.isMobile(context)
                    ? "Software Engineer Undergrad  "
                    : "Software Engineer Undergrad    \t",
                maxLines: 2,
                softWrap: true,
                // overflow: TextOverflow.visible,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1.3,
                  fontSize: Responsive.isMobile(context) ? 13.5 : null,
                ),
              ),
              SizedBox(
                width: Responsive.isMobile(context) ? 20 : 50,
                child: Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 1,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * .07),
          Text(
            "Based in Johannesburg, South Africa. I'm a web and mobile developer.",
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.white,
                  fontSize: Responsive.isMobile(context) ? 20 : null,
                ),
          ),
          SizedBox(height: size.height * .07),
          Text(
            "An enthusiastic software engineer undergrad ready to imact the world of tech by delivering high quality products while doing everything else I love",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Responsive.isMobile(context)
                    ? Colors.white.withOpacity(.8)
                    : Colors.grey,
                letterSpacing: 3),
          ),
          SizedBox(height: size.height * .07),
          if (Responsive.isMobile(context))
            Center(
              child: GestureDetector(
                onTap: () => Get.toNamed('/about'),
                child: UnderlinedTextArrow(
                  text: "My story",
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          if (!Responsive.isMobile(context))
            GestureDetector(
              onTap: () => Get.toNamed('/about'),
              child: UnderlinedTextArrow(
                text: "My story",
                color: Theme.of(context).primaryColor,
              ),
            ),
        ],
      ),
    );
  }
}
