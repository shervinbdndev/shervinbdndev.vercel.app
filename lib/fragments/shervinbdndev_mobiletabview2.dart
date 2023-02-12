import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_projectbox.dart';

class ShervinBdnDevMobileTabletView2 extends StatelessWidget {
  const ShervinBdnDevMobileTabletView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ShervinBdnDevProjectBox(
          image: 'assets/pics/Portfolio.png',
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/Portfolio'),
            );
          },
        ),
        ShervinBdnDevProjectBox(
          image: 'assets/pics/SendResume-Django.png',
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/SendResume-Django'),
            );
          },
        ),
        ShervinBdnDevProjectBox(
          image: 'assets/pics/PythonLibraryUpdator.png',
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          ontap: () async {
            await launchUrl(
              Uri.parse(
                  'https://github.com/shervinbdndev/PythonLibraryUpdator'),
            );
          },
        ),
      ],
    );
  }
}
