import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_projectbox.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_mobiletabview.dart';

class ShervinBdnDevDesktopProjectsView2 extends StatelessWidget {
  const ShervinBdnDevDesktopProjectsView2({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        deviceWidth <= 800.0
            ? const ShervinBdnDevMobileTabletView()
            : ShervinBdnDevProjectBox(
                image: 'assets/Portfolio.png',
                width: 350.0,
                height: 150.0,
                ontap: () async {
                  await launchUrl(
                    Uri.parse('https://github.com/shervinbdndev/Portfolio'),
                  );
                },
              ),
        ShervinBdnDevProjectBox(
          image: 'assets/SendResume-Django.png',
          width: 350.0,
          height: 150.0,
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/SendResume-Django'),
            );
          },
        ),
        ShervinBdnDevProjectBox(
          image: 'assets/PythonLibraryUpdator.png',
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
