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
        deviceWidth <= BdnConfig.websiteResponsivenessLimit
            ? const ShervinBdnDevMobileTabletView2()
            : ShervinBdnDevProjectBox(
                width: BdnConfig.websiteProjectBoxWidth,
                height: BdnConfig.websiteProjectBoxHeight,
                text: 'یه پکیج پایتونی برای بدست آوردن اطلاعات سیستمی',
                image: BdnUrls.pyScript,
                ontap: () async {
                  await launchUrl(
                    Uri.parse(
                        'https://github.com/shervinbdndev/PyScriptTools.py'),
                  );
                },
              ),
        ShervinBdnDevProjectBox(
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          text: 'Social Media یه اپلیکیشن برای پیدا کردن افراد تو',
          image: BdnUrls.finder,
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/Finder'),
            );
          },
        ),
        ShervinBdnDevProjectBox(
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          text: 'نسخه کلون شده رابط کاربری اپلیکیشن واتس اپ',
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
