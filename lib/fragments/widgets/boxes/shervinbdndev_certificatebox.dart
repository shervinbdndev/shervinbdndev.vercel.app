import 'package:flutter/material.dart';
import 'package:flutter_tilt/flutter_tilt.dart';
import 'package:shervinbdndev/constants/constants.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';
import 'package:shervinbdndev/fragments/widgets/buttons/shervinbdndev_downloadbutton.dart';
import 'package:shervinbdndev/fragments/widgets/buttons/shervinbnddev_viewcertificatebuton.dart';

class ShervinBdnDevCertificateBox extends StatelessWidget {
  final String image;
  final String text;
  final double width;
  final VoidCallback ontap;
  final VoidCallback ontapDownload;

  const ShervinBdnDevCertificateBox({
    super.key,
    required this.image,
    required this.text,
    required this.width,
    required this.ontap,
    required this.ontapDownload,
  });

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Tilt(
      lightConfig: const LightConfig(color: BdnColors.blue,),
      shadowConfig: const ShadowConfig(color: Colors.transparent,),
      child: Column(
        children: <Widget>[
          Container(
            width: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 350.0
                : 380.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: FancyShimmerImage(
                imageUrl: image,
                width: width,
                height: 250.0,
                shimmerBaseColor: BdnColors.purple,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: ShervinBdnDevSimpleText(
                    text: text,
                    color: BdnColors.purple,
                    size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                        ? 12.5
                        : 14.0,
                    family: BdnConfig.websiteEnglishFontFamily,
                    weight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: <Widget>[
                    ShervinBdnDevViewCertificateButton(ontap: ontap),
                    const SizedBox(width: 3.0),
                    ShervinBdnDevDownloadButton(ontap: ontapDownload),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
