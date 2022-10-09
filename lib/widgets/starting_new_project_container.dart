import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../constants/app_colors.dart';
import 'consult_button.dart';

class StartingProjectContainer extends StatelessWidget {
  const StartingProjectContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      width: size.width * .5,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            'assets/icons/email.svg',
            // color: Colors.purple,
            height: 60,
          ),
          const SizedBox(width: 20),
          Container(
            height: double.infinity,
            width: 2,
            color: Colors.grey,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Starting a new project?',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
              ),
              Text(
                'Get an estimate for the new project',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.grey[200], letterSpacing: 3),
              ),
            ],
          ),
          const SizedBox(width: 70),
          const ConsultButton(
              text: 'Hire me!',
              color: Colors.teal,
              icon: 'assets/icons/email.svg'),
        ],
      ),
    );
  }
}
