import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/widgets/boxes/shervinbdndev_certificatebox.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_divider.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

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
      meta.seoAuthor('شروین بدن آرا');
      meta.seoDescription('صفحه مدارک');
      meta.seoKeywords('فلاتر, متا, سئو, دارت, وب');
    }

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
                  weight: FontWeight.bold,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ShervinBdnDevSimpleText(
                    text: 'مدارک',
                    color: Colors.white,
                    size: 30.0,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            ShervinBdnDevCertificateBox(
              image:
                  'https://raw.githubusercontent.com/shervinbdndev/shervinbdndev/master/Certificates/CS50P.png',
              text: 'CS50P Harvard University Certificate',
              width: 350.0,
              ontap: () async {
                await launchUrl(
                  Uri.parse(
                      'https://raw.githubusercontent.com/shervinbdndev/shervinbdndev/master/Certificates/CS50P.png'),
                );
              },
            ),
            const SizedBox(height: 30.0),
            ShervinBdnDevCertificateBox(
              image:
                  'https://raw.githubusercontent.com/shervinbdndev/shervinbdndev/master/Certificates/web_frontend_course_plstr.jpg',
              text: 'Poulstar Institute Web Frontend Course',
              width: 350.0,
              ontap: () async {
                await launchUrl(
                  Uri.parse(
                      'https://raw.githubusercontent.com/shervinbdndev/shervinbdndev/master/Certificates/web_frontend_course_plstr.jpg'),
                );
              },
            ),
            const SizedBox(height: 30.0),
            ShervinBdnDevCertificateBox(
              image:
                  'https://raw.githubusercontent.com/shervinbdndev/shervinbdndev/master/Certificates/database_course_plstr.jpg',
              text: 'Poulstar Institute Database Course',
              width: 350.0,
              ontap: () async {
                await launchUrl(
                  Uri.parse(
                      'https://raw.githubusercontent.com/shervinbdndev/shervinbdndev/master/Certificates/database_course_plstr.jpg'),
                );
              },
            ),
            const SizedBox(height: 30.0),
            ShervinBdnDevCertificateBox(
              image:
                  'https://raw.githubusercontent.com/shervinbdndev/shervinbdndev/master/Certificates/PythonCore_certificate.jpg',
              text: 'Solo Learn Python Core',
              width: 350.0,
              ontap: () async {
                await launchUrl(
                  Uri.parse(
                      'https://raw.githubusercontent.com/shervinbdndev/shervinbdndev/master/Certificates/PythonCore_certificate.jpg'),
                );
              },
            ),
            const ShervinBdnDevDivider(),
          ],
        ),
      ),
    );
  }
}
