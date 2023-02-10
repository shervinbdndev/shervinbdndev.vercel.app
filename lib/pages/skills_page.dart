import 'package:flutter/material.dart';
import 'package:shervinbdndev/router/router.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_divider.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_listtile.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_logotext.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_pageroute.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_particles.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_ripple.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_simpletext.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_hiremebutton.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: BdnColors.blue,
      appBar: deviceWidth <= BdnConfig.websiteResponsivenessLimit
          ? AppBar(
              flexibleSpace: Container(
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
              ),
              title: const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        ShervinBdnDevLogoText(text: 'SHERVINBDNDEV'),
                      ],
                    ),
                  ],
                ),
              ),
            )
          : null,
      drawer: deviceWidth <= BdnConfig.websiteResponsivenessLimit
          ? Drawer(
              child: Container(
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
                child: Column(
                  children: <Widget>[
                    ShervinBdnDevRipple(
                      ontap: () {
                        bdnRouter(context, '/');
                      },
                      widget: const ShervinBdnDevListTile(
                        icon: Icons.home,
                        text: 'خانه',
                      ),
                    ),
                    ShervinBdnDevRipple(
                      ontap: () {
                        bdnRouter(context, '/projects');
                      },
                      widget: const ShervinBdnDevListTile(
                        icon: Icons.mobile_friendly,
                        text: 'پروژه ها',
                      ),
                    ),
                    ShervinBdnDevRipple(
                      ontap: () {
                        bdnRouter(context, '/blog');
                      },
                      widget: const ShervinBdnDevListTile(
                        icon: Icons.code,
                        text: 'بلاگ',
                      ),
                    ),
                    ShervinBdnDevRipple(
                      ontap: () {},
                      widget: const ShervinBdnDevListTile(
                        icon: FontAwesomeIcons.bookOpen,
                        text: 'مهارت ها',
                      ),
                    ),
                  ],
                ),
              ),
            )
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
                      : Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 40.0,
                          ),
                          child: Stack(
                            children: <Widget>[
                              const ShervinBdnDevLogoText(
                                text: 'SHERVINBDNDEV',
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    ShervinBdnDevPageRouteWidget(
                                      text: 'خانه',
                                      ontap: () {
                                        bdnRouter(
                                          context,
                                          '/',
                                        );
                                      },
                                    ),
                                    ShervinBdnDevPageRouteWidget(
                                      text: 'پروژه ها',
                                      ontap: () {
                                        bdnRouter(
                                          context,
                                          '/projects',
                                        );
                                      },
                                    ),
                                    ShervinBdnDevPageRouteWidget(
                                      text: 'بلاگ',
                                      ontap: () {
                                        bdnRouter(
                                          context,
                                          '/blog',
                                        );
                                      },
                                    ),
                                    ShervinBdnDevPageRouteWidget(
                                      text: 'مهارت ها',
                                      ontap: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
            //
          ],
        ),
      ),
    );
  }
}
