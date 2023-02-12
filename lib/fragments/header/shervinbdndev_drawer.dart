import 'package:flutter/material.dart';
import 'package:shervinbdndev/router/router.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_ripple.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_listtile.dart';

class ShervinBdnDevDrawer extends StatelessWidget {
  const ShervinBdnDevDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                icon: Icons.home_rounded,
                text: 'خانه',
              ),
            ),
            ShervinBdnDevRipple(
              ontap: () {
                bdnRouter(context, '/projects');
              },
              widget: const ShervinBdnDevListTile(
                icon: Icons.laptop_mac_rounded,
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
                icon: Icons.terminal,
                text: 'مهارت ها',
              ),
            ),
            ShervinBdnDevRipple(
              ontap: () {
                bdnRouter(context, '/schooling');
              },
              widget: const ShervinBdnDevListTile(
                icon: Icons.school_rounded,
                text: 'تحصیلات',
              ),
            ),
            ShervinBdnDevRipple(
              ontap: () {
                bdnRouter(context, '/certificates');
              },
              widget: const ShervinBdnDevListTile(
                icon: FontAwesomeIcons.certificate,
                text: 'مدارک',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
