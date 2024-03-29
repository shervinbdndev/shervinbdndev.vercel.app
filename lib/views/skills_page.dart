import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:dev_icons/dev_icons.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:shervinbdndev/constants/constants.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_progressbar.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';
import 'package:shervinbdndev/fragments/widgets/dividers/shervinbdndev_horizantaldivider.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      meta.author(author: 'شروین بدن آرا');
      meta.description(description: 'صفحه مهارت ها');
      meta.keywords(keywords: 'فلاتر, متا, سئو, دارت, وب');
    }

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
                    text: 'مهارت های',
                    color: Colors.white,
                    size: 30.0,
                    family: BdnConfig.websitePersianFontFamily,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                children: <Widget>[
                  deviceWidth <= BdnConfig.websiteResponsivenessLimit
                      ? const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.python_plain,
                              percent: 95,
                              text: '95%',
                              techText: 'Python',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.django_plain,
                              percent: 80,
                              text: '80%',
                              techText: 'Django',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.flutter_plain,
                              percent: 75,
                              text: '75%',
                              techText: 'Flutter',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.javascript_plain,
                              percent: 50,
                              text: '50%',
                              techText: 'JavaScript',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.github_original,
                              percent: 85,
                              text: '85%',
                              techText: 'Github',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.html5_plain,
                              percent: 70,
                              text: '70%',
                              techText: 'HTML',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.css3_plain,
                              percent: 60,
                              text: '60%',
                              techText: 'CSS',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: DevIcons.tailwindcssPlain,
                              percent: 70,
                              text: '70%',
                              techText: 'Tailwind',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.bootstrap_plain,
                              percent: 75,
                              text: '75%',
                              techText: 'Bootstrap',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.sass_original,
                              percent: 55,
                              text: '55%',
                              techText: 'SASS',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.postgresql_plain_wordmark,
                              percent: 75,
                              text: '75%',
                              techText: 'Postgresql',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.mysql_plain,
                              percent: 70,
                              text: '70%',
                              techText: 'MYSQL',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.mongodb_plain,
                              percent: 30,
                              text: '30%',
                              techText: 'Mongo DB',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.ubuntu_plain,
                              percent: 80,
                              text: '80%',
                              techText: 'Ubuntu',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.android_plain,
                              percent: 75,
                              text: '75%',
                              techText: 'Android',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.docker_plain,
                              percent: 60,
                              text: '60%',
                              techText: 'Docker',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: DevIcons.vscodePlain,
                              percent: 95,
                              text: '95%',
                              techText: 'VsCode',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: DevIcons.visualstudioPlain,
                              percent: 45,
                              text: '45%',
                              techText: 'Visual Studio',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.pycharm_plain,
                              percent: 85,
                              text: '85%',
                              techText: 'PyCharm',
                            ),
                          ],
                        )
                      : const Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.python_plain,
                                  percent: 95,
                                  text: '95%',
                                  techText: 'Python',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.django_plain,
                                  percent: 80,
                                  text: '80%',
                                  techText: 'Django',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.flutter_plain,
                                  percent: 75,
                                  text: '75%',
                                  techText: 'Flutter',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.javascript_plain,
                                  percent: 50,
                                  text: '50%',
                                  techText: 'JavaScript',
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.github_original,
                                  percent: 85,
                                  text: '85%',
                                  techText: 'Github',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.html5_plain,
                                  percent: 70,
                                  text: '70%',
                                  techText: 'HTML',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.css3_plain,
                                  percent: 60,
                                  text: '60%',
                                  techText: 'CSS',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: DevIcons.tailwindcssPlain,
                                  percent: 70,
                                  text: '70%',
                                  techText: 'Tailwind',
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.bootstrap_plain,
                                  percent: 75,
                                  text: '75%',
                                  techText: 'Bootstrap',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.sass_original,
                                  percent: 55,
                                  text: '55%',
                                  techText: 'SASS',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon:
                                      FlutterDEVICON.postgresql_plain_wordmark,
                                  percent: 75,
                                  text: '75%',
                                  techText: 'Postgresql',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.mysql_plain,
                                  percent: 70,
                                  text: '70%',
                                  techText: 'MYSQL',
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.mongodb_plain,
                                  percent: 30,
                                  text: '30%',
                                  techText: 'Mongo DB',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.ubuntu_plain,
                                  percent: 80,
                                  text: '80%',
                                  techText: 'Ubuntu',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.android_plain,
                                  percent: 75,
                                  text: '75%',
                                  techText: 'Android',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.linux_plain,
                                  percent: 80,
                                  text: '80%',
                                  techText: 'Linux',
                                ),
                                SizedBox(width: 20.0),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.docker_plain,
                                  percent: 60,
                                  text: '60%',
                                  techText: 'Docker',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: DevIcons.vscodePlain,
                                  percent: 95,
                                  text: '95%',
                                  techText: 'VsCode',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: DevIcons.visualstudioPlain,
                                  percent: 45,
                                  text: '45%',
                                  techText: 'Visual Studio',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.pycharm_plain,
                                  percent: 85,
                                  text: '85%',
                                  techText: 'PyCharm',
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                          ],
                        ),
                  const ShervinBdnDevHorizantalDivider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
