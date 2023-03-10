import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_divider.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

class ShervinBdnDevMainView extends StatefulWidget {
  const ShervinBdnDevMainView({super.key});

  @override
  State<ShervinBdnDevMainView> createState() => _ShervinBdnDevMainViewState();
}

class _ShervinBdnDevMainViewState extends State<ShervinBdnDevMainView> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      meta.seoAuthor('شروین بدن آرا');
      meta.seoDescription('صفحه اصلی');
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
                  text: 'کی هستم؟',
                  color: BdnColors.purple,
                  size: 30.0,
                  weight: FontWeight.bold,
                  family: 'Vazirmatn',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ShervinBdnDevSimpleText(
                    text: 'من',
                    color: Colors.white,
                    size: 30.0,
                    weight: FontWeight.bold,
                    family: 'Vazirmatn',
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: ShervinBdnDevSimpleText(
                text:
                    'یه برنامه نویس تحت وب جوون که داره رو مهارتای خودش کار میکنه',
                color: Colors.white,
                size: 13.0,
                weight: FontWeight.normal,
                family: 'Vazirmatn',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 8.0,
              ),
              child: ShervinBdnDevSimpleText(
                text: 'وقتمو صرف ساختن اپلیکیشن های موبایل و توسعه بک اند',
                color: Colors.white,
                size: 13.0,
                weight: FontWeight.normal,
                family: 'Vazirmatn',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: ShervinBdnDevSimpleText(
                text: 'با تکنولوژی های مختلف کردم و عاشق کارم هستم',
                color: Colors.white,
                size: 13.0,
                weight: FontWeight.normal,
                family: 'Vazirmatn',
              ),
            ),
            ShervinBdnDevDivider(),
            Padding(
              padding: EdgeInsets.only(
                top: 30.0,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ShervinBdnDevSimpleText(
                        text: 'بیشتر',
                        color: BdnColors.purple,
                        size: 30.0,
                        weight: FontWeight.bold,
                        family: 'Vazirmatn',
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: ShervinBdnDevSimpleText(
                          text: 'مشخصات',
                          color: Colors.white,
                          size: 30.0,
                          weight: FontWeight.bold,
                          family: 'Vazirmatn',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ShervinBdnDevSimpleText(
                        text: 'شروین بدن آرا',
                        color: Colors.white,
                        size: 14.0,
                        weight: FontWeight.normal,
                        family: 'Vazirmatn',
                      ),
                      SizedBox(width: 10.0),
                      ShervinBdnDevSimpleText(
                        text: ': نام و نام خانوادگی',
                        color: Colors.white,
                        size: 22.0,
                        weight: FontWeight.bold,
                        family: 'Vazirmatn',
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ShervinBdnDevSimpleText(
                        text: '۱۳۸۲',
                        color: Colors.white,
                        size: 14.0,
                        weight: FontWeight.normal,
                        family: 'Vazirmatn',
                      ),
                      SizedBox(width: 10.0),
                      ShervinBdnDevSimpleText(
                        text: ': سال تولد',
                        color: Colors.white,
                        size: 22.0,
                        weight: FontWeight.bold,
                        family: 'Vazirmatn',
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ShervinBdnDevSimpleText(
                        text: 'ایران، رشت',
                        color: Colors.white,
                        size: 14.0,
                        weight: FontWeight.normal,
                        family: 'Vazirmatn',
                      ),
                      SizedBox(width: 10.0),
                      ShervinBdnDevSimpleText(
                        text: ': آدرس',
                        color: Colors.white,
                        size: 22.0,
                        weight: FontWeight.bold,
                        family: 'Vazirmatn',
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ShervinBdnDevSimpleText(
                        text: 'shervin2234@gmail.com',
                        color: Colors.white,
                        size: 14.0,
                        weight: FontWeight.normal,
                        family: 'Rubik',
                      ),
                      SizedBox(width: 10.0),
                      ShervinBdnDevSimpleText(
                        text: ': جیمیل',
                        color: Colors.white,
                        size: 22.0,
                        weight: FontWeight.bold,
                        family: 'Vazirmatn',
                      ),
                    ],
                  ),
                  ShervinBdnDevDivider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
