import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_projectbox.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_mobiletabview.dart';

class ShervinBdnDevDesktopProjectsView extends StatelessWidget {
  const ShervinBdnDevDesktopProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        deviceWidth <= BdnConfig.websiteResponsivenessLimitForTablet
            ? const ShervinBdnDevMobileTabletView()
            : ShervinBdnDevProjectBox(
                width: 350.0,
                height: 150.0,
                image: 'assets/PyScriptTools.jpg',
                ontap: () async {
                  await launchUrl(
                    Uri.parse(
                        'https://github.com/shervinbdndev/PyScriptTools.py'),
                  );
                },
              ),
        ShervinBdnDevProjectBox(
          width: 350.0,
          height: 150.0,
          image: 'assets/Finder.png',
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/Finder'),
            );
          },
        ),
        ShervinBdnDevProjectBox(
          width: 350.0,
          height: 150.0,
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
