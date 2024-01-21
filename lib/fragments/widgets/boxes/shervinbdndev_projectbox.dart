import 'package:flutter/material.dart';
import 'package:flutter_tilt/flutter_tilt.dart';
import 'package:hovering/hovering.dart';
import 'package:shervinbdndev/constants/constants.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_ripple.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

class ShervinBdnDevProjectBox extends StatelessWidget {
  final String image;
  final VoidCallback ontap;
  final double width;
  final String text;
  final double height;

  const ShervinBdnDevProjectBox({
    super.key,
    required this.image,
    required this.ontap,
    required this.width,
    required this.text,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Tilt(
      borderRadius: BorderRadius.circular(10.0),
      lightConfig: const LightConfig(
        color: Colors.transparent,
      ),
      shadowConfig: const ShadowConfig(color: Colors.transparent,),
      child: Padding(
        padding: EdgeInsets.only(
          left: deviceWidth <= BdnConfig.websiteResponsivenessLimit ? 0 : 20.0,
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
            cursor: SystemMouseCursors.click,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 70.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: SizedBox(
                      width: width + 30,
                      height: height + 30,
                      child: FancyShimmerImage(imageUrl: image),
                    ),
                  ),
                ),
                Container(
                  width: width + 30,
                  height: 88.0,
                  decoration: const BoxDecoration(
                    color: BdnColors.purple,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: ShervinBdnDevSimpleText(
                          text: text,
                          color: BdnColors.blue,
                          size: 19.0,
                          family: BdnConfig.websitePersianFontFamily,
                          weight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
