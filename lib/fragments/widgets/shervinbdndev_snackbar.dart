import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

dynamic scaffoldSnackbar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: BdnColors.purple,
      showCloseIcon: true,
      closeIconColor: BdnColors.blue,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(milliseconds: 1500),
      elevation: 25.0,
      content: Center(
        child: ShervinBdnDevSimpleText(
          text: text,
          color: BdnColors.blue,
          size: 20.0,
          weight: FontWeight.bold,
        ),
      ),
    ),
  );
}
