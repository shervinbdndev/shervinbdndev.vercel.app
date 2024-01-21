import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/constants/constants.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';
import 'package:shervinbdndev/fragments/widgets/boxes/shervinbdndev_projectbox.dart';
import 'package:shervinbdndev/fragments/widgets/dividers/shervinbdndev_horizantaldivider.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return ShervinBdnDevScaffold(
      importedWidgets: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ShervinBdnDevSimpleText(
                  text: 'من',
                  color: BdnColors.purple,
                  size: 30.0,
                  family: BdnConfig.websitePersianFontFamily,
                  weight: FontWeight.bold,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ShervinBdnDevSimpleText(
                    text: 'آموزش های',
                    color: Colors.white,
                    size: 30.0,
                    family: BdnConfig.websitePersianFontFamily,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            deviceWidth <= BdnConfig.websiteResponsivenessLimit ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ShervinBdnDevProjectBox(
                  image: BdnUrls.pythonTut,
                  ontap: () async {
                    await launchUrl(
                      Uri.parse('https://www.aparat.com/v/xnGZy')
                    );
                  },
                  width: BdnConfig.websiteProjectBoxWidth,
                  text: 'آموزش مقدماتی تا پیشرفته زبان پایتون',
                  height: BdnConfig.websiteProjectBoxHeight,
                ),
                const SizedBox(height: 20.0),
                ShervinBdnDevProjectBox(
                  image: BdnUrls.gitTut,
                  ontap: () async {
                    await launchUrl(
                      Uri.parse('https://www.aparat.com/v/jbYVy')
                    );
                  },
                  width: BdnConfig.websiteProjectBoxWidth,
                  text: 'آموزش مقدماتی گیت و گیتهاب',
                  height: BdnConfig.websiteProjectBoxHeight,
                ),
              ],
            ) :
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ShervinBdnDevProjectBox(
                  image: BdnUrls.pythonTut,
                  ontap: () async {
                    await launchUrl(
                      Uri.parse('https://www.aparat.com/v/xnGZy')
                    );
                  },
                  width: BdnConfig.websiteProjectBoxWidth,
                  text: 'آموزش مقدماتی تا پیشرفته زبان پایتون',
                  height: BdnConfig.websiteProjectBoxHeight,
                ),
                ShervinBdnDevProjectBox(
                  image: BdnUrls.gitTut,
                  ontap: () async {
                    await launchUrl(
                      Uri.parse('https://www.aparat.com/v/jbYVy')
                    );
                  },
                  width: BdnConfig.websiteProjectBoxWidth,
                  text: 'آموزش مقدماتی گیت و گیتهاب',
                  height: BdnConfig.websiteProjectBoxHeight,
                ),
              ],
            ),
            const ShervinBdnDevHorizantalDivider(),
          ],
        ),
      ),
    );
  }
}
