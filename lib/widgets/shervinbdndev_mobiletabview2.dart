import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_projectbox.dart';

class ShervinBdnDevMobileTabletView2 extends StatelessWidget {
  const ShervinBdnDevMobileTabletView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ShervinBdnDevProjectBox(
          image: 'assets/Portfolio.png',
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/Portfolio'),
            );
          },
        ),
        const SizedBox(height: 10.0),
        ShervinBdnDevProjectBox(
          image: 'assets/SendResume-Django.png',
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/SendResume-Django'),
            );
          },
        ),
        const SizedBox(height: 10.0),
        ShervinBdnDevProjectBox(
          image: 'assets/PythonLibraryUpdator.png',
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
