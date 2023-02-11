import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_simpletext.dart';

class SchoolingPage extends StatefulWidget {
  const SchoolingPage({super.key});

  @override
  State<SchoolingPage> createState() => _SchoolingPageState();
}

class _SchoolingPageState extends State<SchoolingPage> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      meta.seoAuthor('شروین بدن آرا');
      meta.seoDescription('صفحه تحصیلات');
      meta.seoKeywords('فلاتر, متا, سئو, دارت, وب');
    }

    return const ShervinBdnDevScaffold(
      importedWidgets: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            Row(
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
                    text: 'تحصیلات',
                    color: Colors.white,
                    size: 30.0,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
