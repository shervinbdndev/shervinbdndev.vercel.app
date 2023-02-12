import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_ripple.dart';

class ShervinBdnDevViewCertificateButton extends StatelessWidget {
  final VoidCallback ontap;

  const ShervinBdnDevViewCertificateButton({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 30.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: BdnColors.purple,
      ),
      child: ShervinBdnDevRipple(
        bd: 5.0,
        ontap: ontap,
        widget: const Icon(
          Icons.remove_red_eye_outlined,
          color: BdnColors.blue,
        ),
      ),
    );
  }
}
