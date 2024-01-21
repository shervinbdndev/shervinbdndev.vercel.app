import 'package:flutter/material.dart';
import 'package:shervinbdndev/constants/constants.dart';

class ShervinBdnDevPageRouteWidget extends StatelessWidget {
  final String text;
  final VoidCallback ontap;

  const ShervinBdnDevPageRouteWidget({
    super.key,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: ontap,
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: BdnConfig.websitePersianFontFamily,
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
