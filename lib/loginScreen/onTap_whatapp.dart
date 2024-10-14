import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class whatsapOntap extends StatelessWidget {
  const whatsapOntap({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        int phoneNumber = 03082549548;
        final Uri whatsappUrl = Uri.parse("https://wa.me/$phoneNumber");

        if (await launchUrl(whatsappUrl)) {
          await launchUrl(whatsappUrl);
        } else {
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('No any Whatapp on this number'),
            ),
          );
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Technical Support Tap',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            width: height * .01,
          ),
          Image.asset(height: height * .033, 'assets/images/whatsapp.png'),
          SizedBox(
            width: height * .01,
          ),
          Text('Icon', style: TextStyle(color: Colors.grey))
        ],
      ),
    );
  }
}
