import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_ripple.dart';

class ShervinBdnDevProjectBox extends StatelessWidget {
  final String image;
  final VoidCallback ontap;
  final double width;
  final double height;

  const ShervinBdnDevProjectBox({
    super.key,
    required this.image,
    required this.ontap,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        top: 10.0,
      ),
      child: ShervinBdnDevRipple(
        bd: 10.0,
        ontap: ontap,
        widget: HoverAnimatedContainer(
          width: width,
          height: height,
          hoverWidth: width + 30.0,
          hoverHeight: height + 30.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              width: 2.0,
              color: BdnColors.purple,
            ),
          ),
          cursor: MouseCursor.defer,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: FancyShimmerImage(
              imageUrl: image,
              width: 380.0,
              height: 180.0,
            ),
          ),
        ),
      ),
    );
  }
}
