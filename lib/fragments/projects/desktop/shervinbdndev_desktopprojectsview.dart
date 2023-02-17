import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/widgets/boxes/shervinbdndev_projectbox.dart';
import 'package:shervinbdndev/fragments/projects/mobile/shervinbdndev_mobiletabview2.dart';

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
                image: BdnUrls.pyScript,
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
          image: BdnUrls.finder,
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/Finder'),
            );
          },
        ),
        ShervinBdnDevProjectBox(
          width: 350.0,
          height: 150.0,
          image: BdnUrls.whatsapp,
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
