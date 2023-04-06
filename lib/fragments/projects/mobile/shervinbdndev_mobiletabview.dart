import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/widgets/boxes/shervinbdndev_projectbox.dart';

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
          text: 'یه پکیج پایتونی برای بدست آوردن اطلاعات سیستمی',
          image: BdnUrls.pyScript,
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/PyScriptTools.py'),
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
