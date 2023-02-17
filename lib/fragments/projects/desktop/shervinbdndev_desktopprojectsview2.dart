import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/widgets/boxes/shervinbdndev_projectbox.dart';
import 'package:shervinbdndev/fragments/projects/mobile/shervinbdndev_mobiletabview2.dart';

class ShervinBdnDevDesktopProjectsView2 extends StatelessWidget {
  const ShervinBdnDevDesktopProjectsView2({super.key});

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
                image: BdnUrls.portfolio,
                width: 350.0,
                height: 150.0,
                ontap: () async {
                  await launchUrl(
                    Uri.parse('https://github.com/shervinbdndev/Portfolio'),
                  );
                },
              ),
        ShervinBdnDevProjectBox(
          image: BdnUrls.resume,
          width: 350.0,
          height: 150.0,
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/SendResume-Django'),
            );
          },
        ),
        ShervinBdnDevProjectBox(
          image: BdnUrls.updator,
          width: 350.0,
          height: 150.0,
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
