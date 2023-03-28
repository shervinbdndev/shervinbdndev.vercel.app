import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:image_downloader_web/image_downloader_web.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_divider.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';
import 'package:shervinbdndev/fragments/widgets/boxes/shervinbdndev_certificatebox.dart';

class CertificatesPage extends StatefulWidget {
  const CertificatesPage({super.key});

  @override
  State<CertificatesPage> createState() => _CertificatesPageState();
}

class _CertificatesPageState extends State<CertificatesPage> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      meta.author(author: 'شروین بدن آرا');
      meta.description(description: 'صفحه مدارک');
      meta.keywords(keywords: 'فلاتر, متا, سئو, دارت, وب');
    }

    var deviceWidth = MediaQuery.of(context).size.width;

    return ShervinBdnDevScaffold(
      importedWidgets: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ShervinBdnDevSimpleText(
                  text: 'من',
                  color: BdnColors.purple,
                  size: 30.0,
                  family: 'Vazirmatn',
                  weight: FontWeight.bold,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ShervinBdnDevSimpleText(
                    text: 'مدارک',
                    color: Colors.white,
                    size: 30.0,
                    family: 'Vazirmatn',
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            ShervinBdnDevCertificateBox(
              image: BdnUrls.harvard,
              text: 'CS50P Harvard University Certificate',
              width: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                  ? 350.0
                  : 380.0,
              ontap: () async {
                await launchUrl(
                  Uri.parse(BdnUrls.harvardWeb),
                );
              },
              ontapDownload: () async {
                await WebImageDownloader.downloadImageFromWeb(BdnUrls.harvard);
              },
            ),
            const SizedBox(height: 30.0),
            ShervinBdnDevCertificateBox(
              image: BdnUrls.plstrWeb,
              text: 'Poulstar Institute Web Frontend Course',
              width: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                  ? 350.0
                  : 380.0,
              ontap: () async {
                await launchUrl(
                  Uri.parse(BdnUrls.plstrWeb),
                );
              },
              ontapDownload: () async {
                await WebImageDownloader.downloadImageFromWeb(BdnUrls.plstrWeb);
              },
            ),
            const SizedBox(height: 30.0),
            ShervinBdnDevCertificateBox(
              image: BdnUrls.plstrDatabase,
              text: 'Poulstar Institute Database Course',
              width: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                  ? 350.0
                  : 380.0,
              ontap: () async {
                await launchUrl(
                  Uri.parse(BdnUrls.plstrDatabase),
                );
              },
              ontapDownload: () async {
                await WebImageDownloader.downloadImageFromWeb(
                    BdnUrls.plstrDatabase);
              },
            ),
            const SizedBox(height: 30.0),
            ShervinBdnDevCertificateBox(
              image: BdnUrls.soloLearn,
              text: 'Solo Learn Python Core',
              width: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                  ? 350.0
                  : 380.0,
              ontap: () async {
                await launchUrl(
                  Uri.parse(BdnUrls.soloLearn),
                );
              },
              ontapDownload: () async {
                await WebImageDownloader.downloadImageFromWeb(
                    BdnUrls.soloLearn);
              },
            ),
            const ShervinBdnDevDivider(),
          ],
        ),
      ),
    );
  }
}
