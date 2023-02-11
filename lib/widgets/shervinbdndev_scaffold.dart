import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_appbar.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_desktopmenu.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_drawer.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_hiremebutton.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_particles.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_simpletext.dart';

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
            Container(
              width: deviceWidth,
              height: BdnConfig.websiteHeaderHeight,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
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
                          width: 280.0,
                          height: 280.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(140.0),
                            child: Image.asset(
                              'assets/me.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const BdnAnimatedText(),
                        const Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: ShervinBdnDevHireMeButton(
                            text: 'تماس با من',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
