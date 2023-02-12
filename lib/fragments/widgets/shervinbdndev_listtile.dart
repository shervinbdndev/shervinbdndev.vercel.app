import 'package:flutter/material.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_simpletext.dart';

class ShervinBdnDevListTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const ShervinBdnDevListTile({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 30.0,
      ),
      title: ShervinBdnDevSimpleText(
        text: text,
        color: Colors.white,
        size: 20.0,
        weight: FontWeight.bold,
      ),
    );
  }
}
