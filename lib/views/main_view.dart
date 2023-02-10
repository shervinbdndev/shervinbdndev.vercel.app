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

class ShervinBdnDevMainView extends StatefulWidget {
  const ShervinBdnDevMainView({super.key});

  @override
  State<ShervinBdnDevMainView> createState() => _ShervinBdnDevMainViewState();
}

class _ShervinBdnDevMainViewState extends State<ShervinBdnDevMainView> {
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
                      ontap: () {},
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
                      ontap: () {
                        bdnRouter(context, '/skills');
                      },
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
                                      ontap: () {},
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
                                      ontap: () {
                                        bdnRouter(
                                          context,
                                          '/skills',
                                        );
                                      },
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
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ShervinBdnDevSimpleText(
                        text: 'کی هستم؟',
                        color: BdnColors.purple,
                        size: 30.0,
                        weight: FontWeight.bold,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: ShervinBdnDevSimpleText(
                          text: 'من',
                          color: Colors.white,
                          size: 30.0,
                          weight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: ShervinBdnDevSimpleText(
                      text:
                          'یه برنامه نویس تحت وب جوون که داره رو مهارتای خودش کار میکنه',
                      color: Colors.white,
                      size: 13.0,
                      weight: FontWeight.normal,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.0,
                    ),
                    child: ShervinBdnDevSimpleText(
                      text:
                          'وقتمو صرف ساختن اپلیکیشن های موبایل با فریمورک فلاتر کردم',
                      color: Colors.white,
                      size: 13.0,
                      weight: FontWeight.normal,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: ShervinBdnDevSimpleText(
                      text: 'و کمی هم توسعه بک اند با جنگو کار میکنم',
                      color: Colors.white,
                      size: 13.0,
                      weight: FontWeight.normal,
                    ),
                  ),
                  ShervinBdnDevDivider(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 30.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ShervinBdnDevSimpleText(
                              text: 'بیشتر؟',
                              color: BdnColors.purple,
                              size: 30.0,
                              weight: FontWeight.bold,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: ShervinBdnDevSimpleText(
                                text: 'مشخصات',
                                color: Colors.white,
                                size: 30.0,
                                weight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ShervinBdnDevSimpleText(
                              text: 'شروین بدن آرا',
                              color: Colors.white,
                              size: 14.0,
                              weight: FontWeight.normal,
                            ),
                            SizedBox(width: 10.0),
                            ShervinBdnDevSimpleText(
                              text: ': نام و نام خانوادگی',
                              color: Colors.white,
                              size: 22.0,
                              weight: FontWeight.bold,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ShervinBdnDevSimpleText(
                              text: '۲۰',
                              color: Colors.white,
                              size: 14.0,
                              weight: FontWeight.normal,
                            ),
                            SizedBox(width: 10.0),
                            ShervinBdnDevSimpleText(
                              text: ': سن',
                              color: Colors.white,
                              size: 22.0,
                              weight: FontWeight.bold,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ShervinBdnDevSimpleText(
                              text: 'ایران، رشت',
                              color: Colors.white,
                              size: 14.0,
                              weight: FontWeight.normal,
                            ),
                            SizedBox(width: 10.0),
                            ShervinBdnDevSimpleText(
                              text: ': آدرس',
                              color: Colors.white,
                              size: 22.0,
                              weight: FontWeight.bold,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ShervinBdnDevSimpleText(
                              text: 'shervin2234@gmail.com',
                              color: Colors.white,
                              size: 14.0,
                              weight: FontWeight.normal,
                            ),
                            SizedBox(width: 10.0),
                            ShervinBdnDevSimpleText(
                              text: ': جیمیل',
                              color: Colors.white,
                              size: 22.0,
                              weight: FontWeight.bold,
                            ),
                          ],
                        ),
                        ShervinBdnDevDivider(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
