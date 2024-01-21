import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/constants/constants.dart';
import 'package:shervinbdndev/fragments/widgets/boxes/shervinbdndev_projectbox.dart';

class ShervinBdnDevMobileTabletView2 extends StatelessWidget {
  const ShervinBdnDevMobileTabletView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ShervinBdnDevProjectBox(
          image: BdnUrls.portfolio,
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          text: 'یه پورتفولیو ساده با فلاتر تحت وب',
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/Portfolio'),
            );
          },
        ),
        ShervinBdnDevProjectBox(
          image: BdnUrls.resume,
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          text: 'پروژه ارسال رزومه با جنگو',
          ontap: () async {
            await launchUrl(
              Uri.parse('https://github.com/shervinbdndev/SendResume-Django'),
            );
          },
        ),
        ShervinBdnDevProjectBox(
          image: BdnUrls.updator,
          width: BdnConfig.websiteProjectBoxWidth,
          height: BdnConfig.websiteProjectBoxHeight,
          text: 'اسکریپت آپدیت کننده تمام پکیج های نصب شده پایتون',
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
