import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_projectbox.dart';

class ShervinBdnDevMobileTabletView extends StatelessWidget {
  const ShervinBdnDevMobileTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ShervinBdnDevProjectBox(
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          image: 'assets/PyScriptTools.jpg',
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/PyScriptTools.py'),
            );
          },
        ),
        const SizedBox(height: 10.0),
        ShervinBdnDevProjectBox(
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          image: 'assets/Finder.png',
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/Finder'),
            );
          },
        ),
        const SizedBox(height: 10.0),
        ShervinBdnDevProjectBox(
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          image: 'assets/WhatsappClone.png',
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/WhatsappClone'),
            );
          },
        ),
      ],
    );
  }
}
