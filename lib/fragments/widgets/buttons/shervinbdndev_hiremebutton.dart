import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:shervinbdndev/constants/constants.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_ripple.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_snackbar.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

class ShervinBdnDevHireMeButton extends StatelessWidget {
  final String text;

  const ShervinBdnDevHireMeButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ShervinBdnDevRipple(
      ontap: () async {
        FlutterClipboard.copy('shervinbdn2234@gmail.com');
        scaffoldSnackbar(context, 'جیمیل کپی شد');
      },
      widget: Container(
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
            family: BdnConfig.websitePersianFontFamily,
            weight: FontWeight.normal,
          ),
        ),
      ),
      bd: 50.0,
    );
  }
}
