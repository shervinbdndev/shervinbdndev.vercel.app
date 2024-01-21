import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shervinbdndev/router/router.dart';
import 'package:shervinbdndev/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_ripple.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_listtile.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ShervinBdnDevRipple(
                  bd: 0,
                  ontap: () {
                    bdnRouter(context, '/');
                  },
                  widget: const ShervinBdnDevListTile(
                    icon: Icons.home_rounded,
                    text: 'خانه',
                  ),
                ),
                ShervinBdnDevRipple(
                  bd: 0,
                  ontap: () {
                    bdnRouter(context, '/projects');
                  },
                  widget: const ShervinBdnDevListTile(
                    icon: Icons.laptop_mac_rounded,
                    text: 'پروژه ها',
                  ),
                ),
                ShervinBdnDevRipple(
                  bd: 0,
                  ontap: () {
                    bdnRouter(context, '/blog');
                  },
                  widget: const ShervinBdnDevListTile(
                    icon: Icons.menu_book_rounded,
                    text: 'بلاگ',
                  ),
                ),
                ShervinBdnDevRipple(
                  bd: 0,
                  ontap: () {
                    bdnRouter(context, '/tutorials');
                  },
                  widget: const ShervinBdnDevListTile(
                    icon: Iconsax.video_octagon,
                    text: 'آموزش ها',
                  ),
                ),
                ShervinBdnDevRipple(
                  bd: 0,
                  ontap: () {
                    bdnRouter(context, '/snippets');
                  },
                  widget: const ShervinBdnDevListTile(
                    icon: Icons.code,
                    text: 'قطعه کد',
                  ),
                ),
                ShervinBdnDevRipple(
                  bd: 0,
                  ontap: () {
                    bdnRouter(context, '/skills');
                  },
                  widget: const ShervinBdnDevListTile(
                    icon: Icons.terminal,
                    text: 'مهارت ها',
                  ),
                ),
                ShervinBdnDevRipple(
                  bd: 0,
                  ontap: () {
                    bdnRouter(context, '/schooling');
                  },
                  widget: const ShervinBdnDevListTile(
                    icon: Icons.school_rounded,
                    text: 'تحصیلات',
                  ),
                ),
                ShervinBdnDevRipple(
                  bd: 0,
                  ontap: () {
                    bdnRouter(context, '/donate');
                  },
                  widget: const ShervinBdnDevListTile(
                    icon: Icons.attach_money_rounded,
                    text: 'حمایت',
                  ),
                ),
                ShervinBdnDevRipple(
                  bd: 0,
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
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                bottom: 10.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ShervinBdnDevSimpleText(
                    text: BdnConfig.websiteVersion,
                    color: BdnColors.blue,
                    size: 12.0,
                    weight: FontWeight.bold,
                    family: 'Rubik',
                  ),
                  Text('❤️با عشق فراوان❤️'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
