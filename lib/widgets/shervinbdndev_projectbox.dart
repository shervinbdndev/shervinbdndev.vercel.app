import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:gradient_borders/gradient_borders.dart';

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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(5.0),
          onTap: ontap,
          child: HoverCrossFadeWidget(
            duration: const Duration(milliseconds: 300),
            cursor: MouseCursor.defer,
            firstChild: HoverContainer(
              width: width,
              height: height,
              cursor: MouseCursor.defer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  width: 2.0,
                  color: BdnColors.purple,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            secondChild: HoverContainer(
              width: width,
              height: height,
              hoverWidth: width + 30.0,
              hoverHeight: height + 30.0,
              cursor: MouseCursor.defer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  width: 2.0,
                  color: BdnColors.purple,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.network(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ShervinBdnDevBlogBox extends StatelessWidget {
  final String image;
  final VoidCallback ontap;
  final double width;
  final double height;

  const ShervinBdnDevBlogBox({
    super.key,
    required this.image,
    required this.ontap,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(5.0),
          onTap: ontap,
          child: HoverContainer(
            width: width,
            height: height,
            hoverWidth: width + 30.0,
            hoverHeight: height + 30.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: const GradientBoxBorder(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepPurple,
                    BdnColors.purple,
                  ],
                ),
                width: 2.5,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
