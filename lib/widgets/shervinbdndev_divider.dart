import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';

class ShervinBdnDevDivider extends StatelessWidget {
  const ShervinBdnDevDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 15.0),
      child: SizedBox(
        width: 80.0,
        child: Divider(
          color: BdnColors.purple,
          thickness: 1.5,
        ),
      ),
    );
  }
}
