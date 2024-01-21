import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:shervinbdndev/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

class ShervinBdnDevFooter extends StatelessWidget {
  const ShervinBdnDevFooter({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: deviceWidth,
      height: deviceWidth <= BdnConfig.websiteResponsivenessLimit
          ? BdnConfig.websiteFooterHeight - 15
          : BdnConfig.websiteFooterHeight,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        gradient: LinearGradient(
          colors: <Color>[
            BdnColors.secondaryPurple,
            BdnColors.purple,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: deviceWidth <= BdnConfig.websiteResponsivenessLimit
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.copyright,
                      size: 16.5,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5.0),
                    ShervinBdnDevSimpleText(
                      text: 'کپی رایت ۱۴۰۲',
                      color: Colors.white,
                      size: 16.5,
                      family: BdnConfig.websitePersianFontFamily,
                      weight: FontWeight.normal,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () async {
                        await launchUrl(
                          Uri.parse(BdnUrls.github),
                        );
                      },
                      icon: const Icon(
                        FlutterDEVICON.github_original,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        await launchUrl(
                          Uri.parse('mailto:shervin2234@gmail.com'),
                        );
                      },
                      icon: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        await launchUrl(
                          Uri.parse('https://t.me/shervinbdndev'),
                        );
                      },
                      icon: const Icon(
                        FontAwesomeIcons.telegram,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                deviceWidth <= BdnConfig.websiteResponsivenessLimit
                    ? const SizedBox()
                    : const ShervinBdnDevSimpleText(
                        text: BdnConfig.websiteVersion,
                        color: BdnColors.blue,
                        size: 12.0,
                        weight: FontWeight.bold,
                        family: BdnConfig.websiteEnglishFontFamily,
                      ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.copyright,
                      size: 16.5,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5.0),
                    ShervinBdnDevSimpleText(
                      text: 'کپی رایت ۱۴۰۲',
                      color: Colors.white,
                      size: 16.5,
                      family: BdnConfig.websitePersianFontFamily,
                      weight: FontWeight.normal,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () async {
                        await launchUrl(
                          Uri.parse(BdnUrls.github),
                        );
                      },
                      icon: const Icon(
                        FlutterDEVICON.github_original,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        await launchUrl(
                          Uri.parse('mailto:shervin2234@gmail.com'),
                        );
                      },
                      icon: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        await launchUrl(
                          Uri.parse('https://t.me/shervinbdndev'),
                        );
                      },
                      icon: const Icon(
                        FontAwesomeIcons.telegram,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
