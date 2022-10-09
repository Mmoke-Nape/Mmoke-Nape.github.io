import 'package:flutter/material.dart';
import 'package:personal_website/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class SendMeAnEmailButton extends StatefulWidget {
  const SendMeAnEmailButton({
    Key? key,
  }) : super(key: key);

  @override
  State<SendMeAnEmailButton> createState() => _SendMeAnEmailButtonState();
}

class _SendMeAnEmailButtonState extends State<SendMeAnEmailButton> {
  var isHovering = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => _openEmail('mailto:napemmoke@gmail.com?'),
      onHover: (value) {
        setState(() {
          isHovering = !isHovering;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        width: Responsive.isMobile(context) ? size.width * .6 : null,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: isHovering ? null : Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Send me an email", style: TextStyle(color: Colors.black)),
            SizedBox(width: 10),
            Icon(
              Icons.mail_outline,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }

  void _openEmail(String _url) async {
    if (!await launch(_url)) throw 'Could not Send Email';
  }
}
