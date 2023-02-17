import 'package:flutter/material.dart';
import 'package:shervinbdndev/router/router.dart';
import 'package:shervinbdndev/fragments/header/shervinbdndev_pageroute.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_logotext.dart';

class ShervinBdnDevDesktopMenu extends StatelessWidget {
  const ShervinBdnDevDesktopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    bdnRouter(context, '/');
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
                  ontap: () {
                    bdnRouter(
                      context,
                      '/skills',
                    );
                  },
                ),
                ShervinBdnDevPageRouteWidget(
                  text: 'تحصیلات',
                  ontap: () {
                    bdnRouter(
                      context,
                      '/schooling',
                    );
                  },
                ),
                ShervinBdnDevPageRouteWidget(
                  text: 'مدارک',
                  ontap: () {
                    bdnRouter(
                      context,
                      '/certificates',
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
