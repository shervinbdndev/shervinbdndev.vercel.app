import 'dart:math' as math;
import 'package:wave/wave.dart';
import 'package:wave/config.dart';
import 'package:flutter/material.dart';
import 'package:ripple_wave/ripple_wave.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:shervinbdndev/fragments/header/shervinbdndev_appbar.dart';
import 'package:shervinbdndev/fragments/header/shervinbdndev_drawer.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_particles.dart';
import 'package:shervinbdndev/fragments/header/shervinbdndev_desktopmenu.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';
import 'package:shervinbdndev/fragments/widgets/buttons/shervinbdndev_hiremebutton.dart';

class ShervinBdnDevScaffold extends StatelessWidget {
  final Widget importedWidgets;

  const ShervinBdnDevScaffold({
    super.key,
    required this.importedWidgets,
  });

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: BdnColors.blue,
      appBar: deviceWidth <= BdnConfig.websiteResponsivenessLimit
          ? ShervinBdnDevAppbar(deviceWidth: deviceWidth)
          : null,
      drawer: deviceWidth <= BdnConfig.websiteResponsivenessLimit
          ? const ShervinBdnDevDrawer()
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: deviceWidth,
                  height: BdnConfig.websiteHeaderHeight,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        BdnColors.blue,
                        BdnColors.purple,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      ShervinBdnDevParticles(
                        height: BdnConfig.websiteHeaderHeight,
                        deviceWidth: deviceWidth,
                      ),
                      deviceWidth <= BdnConfig.websiteResponsivenessLimit
                          ? const SizedBox(
                              // pedaram dar omad ta in dorost shod
                              )
                          : const ShervinBdnDevDesktopMenu(),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 400.0,
                              height: 400.0,
                              child: RippleWave(
                                color: BdnColors.purple,
                                repeat: true,
                                child: SizedBox(
                                  width: 280.0,
                                  height: 280.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(140.0),
                                    child: FancyShimmerImage(
                                      imageUrl: BdnUrls.me,
                                      width: 280.0,
                                      height: 280.0,
                                      shimmerBaseColor: BdnColors.purple,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const BdnAnimatedText(),
                            const Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: ShervinBdnDevHireMeButton(
                                text: 'ارتباط با من',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.rotate(
                  angle: math.pi,
                  child: WaveWidget(
                    config: CustomConfig(
                      durations: <int>[
                        4000,
                        5000,
                      ],
                      heightPercentages: <double>[
                        0.65,
                        0.66,
                      ],
                      colors: <Color>[
                        BdnColors.purple,
                        BdnColors.secondaryPurple,
                      ],
                    ),
                    size: const Size(
                      double.infinity,
                      50.0,
                    ),
                  ),
                ),
              ],
            ),
            importedWidgets,
            const SizedBox(height: 30.0),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.copyright,
                      size: 15.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5.0),
                    ShervinBdnDevSimpleText(
                      text: 'کپی رایت ۱۴۰۱',
                      color: Colors.white,
                      size: 15.0,
                      family: 'Vazirmatn',
                      weight: FontWeight.normal,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
