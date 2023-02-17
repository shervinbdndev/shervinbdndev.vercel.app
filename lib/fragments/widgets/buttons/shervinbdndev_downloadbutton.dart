import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_ripple.dart';

class ShervinBdnDevDownloadButton extends StatelessWidget {
  final VoidCallback ontap;

  const ShervinBdnDevDownloadButton({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ShervinBdnDevRipple(
      ontap: ontap,
      widget: Container(
        width: 40.0,
        height: 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.green,
        ),
        child: const Icon(
          Icons.downloading_rounded,
          color: BdnColors.blue,
        ),
      ),
      bd: 5.0,
    );
  }
}
