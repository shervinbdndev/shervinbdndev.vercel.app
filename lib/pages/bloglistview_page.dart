import 'package:flutter/material.dart';
import 'package:shervinbdndev/router/router.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_divider.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_listtile.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_logotext.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_pageroute.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_particles.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_projectbox.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_ripple.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_simpletext.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_hiremebutton.dart';

class BlogListViewPage extends StatefulWidget {
  const BlogListViewPage({super.key});

  @override
  State<BlogListViewPage> createState() => _BlogListViewPageState();
}

class _BlogListViewPageState extends State<BlogListViewPage> {
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
                      ontap: () {},
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
        child: SafeArea(
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
                                const Row(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        ShervinBdnDevLogoText(
                                          text: 'SHERVINBDNDEV',
                                        ),
                                      ],
                                    ),
                                  ],
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
                                        ontap: () {},
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
                          const Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: BdnAnimatedText(),
                          ),
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
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  children: <Widget>[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ShervinBdnDevSimpleText(
                          text: 'مفید؟',
                          color: BdnColors.purple,
                          size: 30.0,
                          weight: FontWeight.bold,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: ShervinBdnDevSimpleText(
                            text: 'مطالب',
                            color: Colors.white,
                            size: 30.0,
                            weight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    deviceWidth <= BdnConfig.websiteResponsivenessLimit
                        ? Column(
                            children: <Widget>[
                              ShervinBdnDevBlogBox(
                                image: 'assets/1st_per.jpg',
                                ontap: () {},
                                width: 250.0,
                                height: 250.0,
                              ),
                              const SizedBox(height: 15.0),
                              ShervinBdnDevBlogBox(
                                image: 'assets/soon_per.jpg',
                                ontap: () {},
                                width: 250.0,
                                height: 250.0,
                              ),
                              const SizedBox(height: 15.0),
                              ShervinBdnDevBlogBox(
                                image: 'assets/soon_per.jpg',
                                ontap: () {},
                                width: 250.0,
                                height: 250.0,
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ShervinBdnDevBlogBox(
                                    image: 'assets/1st_per.jpg',
                                    ontap: () {},
                                    width: 250.0,
                                    height: 250.0,
                                  ),
                                  const SizedBox(width: 15.0),
                                  ShervinBdnDevBlogBox(
                                    image: 'assets/soon_per.jpg',
                                    ontap: () {},
                                    width: 250.0,
                                    height: 250.0,
                                  ),
                                  const SizedBox(width: 15.0),
                                  ShervinBdnDevBlogBox(
                                    image: 'assets/soon_per.jpg',
                                    ontap: () {},
                                    width: 250.0,
                                    height: 250.0,
                                  ),
                                ],
                              ),
                              const Row(
                                children: <Widget>[
                                  // new posts here
                                ],
                              ),
                            ],
                          ),
                    const ShervinBdnDevDivider(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
