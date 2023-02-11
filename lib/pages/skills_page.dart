import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_divider.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_progressbar.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_simpletext.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
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
                  weight: FontWeight.bold,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ShervinBdnDevSimpleText(
                    text: 'مهارت های',
                    color: Colors.white,
                    size: 30.0,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: <Widget>[
                  deviceWidth <= BdnConfig.websiteResponsivenessLimit
                      ? const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.python_plain,
                              percent: 90,
                              text: '90%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.django_plain,
                              percent: 65,
                              text: '65%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.flutter_plain,
                              percent: 75,
                              text: '75%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.javascript_plain,
                              percent: 40,
                              text: '40%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.github_original,
                              percent: 85,
                              text: '85%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.html5_plain,
                              percent: 70,
                              text: '70%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.css3_plain,
                              percent: 60,
                              text: '60%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.bootstrap_plain,
                              percent: 70,
                              text: '70%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.sass_original,
                              percent: 55,
                              text: '55%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.postgresql_plain_wordmark,
                              percent: 75,
                              text: '75%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.mysql_plain,
                              percent: 70,
                              text: '70%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.mongodb_plain,
                              percent: 30,
                              text: '30%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.ubuntu_plain,
                              percent: 80,
                              text: '80%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.android_plain,
                              percent: 70,
                              text: '70%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.linux_plain,
                              percent: 80,
                              text: '80%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.docker_plain,
                              percent: 60,
                              text: '60%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.visualstudio_plain,
                              percent: 100,
                              text: '100%',
                            ),
                            SizedBox(height: 20.0),
                            ShervinBdnDevProgressBar(
                              icon: FlutterDEVICON.pycharm_plain,
                              percent: 85,
                              text: '85%',
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
                                  percent: 90,
                                  text: '90%',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.django_plain,
                                  percent: 65,
                                  text: '65%',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.flutter_plain,
                                  percent: 75,
                                  text: '75%',
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.javascript_plain,
                                  percent: 40,
                                  text: '40%',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.github_original,
                                  percent: 85,
                                  text: '85%',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.html5_plain,
                                  percent: 70,
                                  text: '70%',
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.css3_plain,
                                  percent: 60,
                                  text: '60%',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.bootstrap_plain,
                                  percent: 70,
                                  text: '70%',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.sass_original,
                                  percent: 55,
                                  text: '55%',
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ShervinBdnDevProgressBar(
                                  icon:
                                      FlutterDEVICON.postgresql_plain_wordmark,
                                  percent: 75,
                                  text: '75%',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.mysql_plain,
                                  percent: 70,
                                  text: '70%',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.mongodb_plain,
                                  percent: 30,
                                  text: '30%',
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.ubuntu_plain,
                                  percent: 80,
                                  text: '80%',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.android_plain,
                                  percent: 70,
                                  text: '70%',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.linux_plain,
                                  percent: 80,
                                  text: '80%',
                                ),
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
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.visualstudio_plain,
                                  percent: 100,
                                  text: '100%',
                                ),
                                SizedBox(width: 20.0),
                                ShervinBdnDevProgressBar(
                                  icon: FlutterDEVICON.pycharm_plain,
                                  percent: 85,
                                  text: '85%',
                                ),
                              ],
                            ),
                          ],
                        ),
                  const ShervinBdnDevDivider()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
