import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_logotext.dart';

class ShervinBdnDevAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  final double deviceWidth;

  const ShervinBdnDevAppbar({
    super.key,
    required this.deviceWidth,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
