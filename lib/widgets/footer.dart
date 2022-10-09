import 'package:flutter/material.dart';
import 'package:personal_website/responsive/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: Responsive.isMobile(context) ? 50 : 100,
      width: size.width,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context) ? 10 : 200, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text(
            'BUILT FROM SRATCH BY ME :)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white54,
            ),
          ),
          Text(
            'MMOKE NAPE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
