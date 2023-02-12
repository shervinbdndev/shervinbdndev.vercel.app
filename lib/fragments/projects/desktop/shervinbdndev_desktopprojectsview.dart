import 'package:flutter/material.dart';
import 'package:shervinbdndev/fragments/projects/mobile/shervinbdndev_mobiletabview2.dart';
import 'package:shervinbdndev/fragments/widgets/boxes/shervinbdndev_projectbox.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/components/component.dart';

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
            ? const ShervinBdnDevMobileTabletView2()
            : ShervinBdnDevProjectBox(
                width: 350.0,
                height: 150.0,
                image: 'assets/pics/PyScriptTools.jpg',
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
          image: 'assets/pics/Finder.png',
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/Finder'),
            );
          },
        ),
        ShervinBdnDevProjectBox(
          width: 350.0,
          height: 150.0,
          image: 'assets/pics/WhatsappClone.png',
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
