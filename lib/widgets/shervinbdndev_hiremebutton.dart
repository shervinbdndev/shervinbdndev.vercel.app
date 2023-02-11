import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/router/router.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_simpletext.dart';

class ShervinBdnDevHireMeButton extends StatelessWidget {
  final String text;

  const ShervinBdnDevHireMeButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          bdnRouter(
            context,
            '/',
          );
        },
        borderRadius: BorderRadius.circular(50.0),
        child: Container(
          width: 120.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(
              width: 2.0,
              color: BdnColors.purple,
            ),
          ),
          child: Center(
            child: ShervinBdnDevSimpleText(
              text: text,
              color: Colors.white,
              size: 15.0,
              weight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
