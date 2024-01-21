import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:shervinbdndev/router/router.dart';
import 'package:shervinbdndev/constants/constants.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_snackbar.dart';
import 'package:shervinbdndev/fragments/widgets/boxes/shervinbnddev_blogbox.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

class SnippetsPage extends StatefulWidget {
  const SnippetsPage({super.key});

  @override
  State<SnippetsPage> createState() => _SnippetsPageState();
}

class _SnippetsPageState extends State<SnippetsPage> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      meta.author(author: 'شروین بدن آرا');
      meta.description(description: 'صفحه قطعه کد');
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
                  text: 'کد',
                  color: BdnColors.purple,
                  size: 30.0,
                  family: BdnConfig.websitePersianFontFamily,
                  weight: FontWeight.bold,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ShervinBdnDevSimpleText(
                    text: 'قطعه',
                    color: Colors.white,
                    size: 30.0,
                    family: BdnConfig.websitePersianFontFamily,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? Column(
                    children: <Widget>[
                      ShervinBdnDevBlogBox(
                        image: BdnUrls.snpt1,
                        ontap: () async {
                          bdnRouter(
                            context,
                            '/snippets/how-to-get-public-ip-using-python',
                          );
                        },
                        width: 250.0,
                        height: 250.0,
                        likeCount: 24,
                        saveCount: 8,
                      ),
                      const SizedBox(height: 15.0),
                      ShervinBdnDevBlogBox(
                        image: BdnUrls.soonPer,
                        ontap: () async {
                          scaffoldSnackbar(context, 'بزودی آپلود میشود');
                        },
                        width: 250.0,
                        height: 250.0,
                        likeCount: 0,
                        saveCount: 0,
                      ),
                      const SizedBox(height: 15.0),
                      ShervinBdnDevBlogBox(
                        image: BdnUrls.soonPer,
                        ontap: () async {
                          scaffoldSnackbar(context, 'بزودی آپلود میشود');
                        },
                        width: 250.0,
                        height: 250.0,
                        likeCount: 0,
                        saveCount: 0,
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ShervinBdnDevBlogBox(
                            image: BdnUrls.snpt1,
                            ontap: () async {
                              bdnRouter(
                                context,
                                '/snippets/how-to-get-public-ip-using-python',
                              );
                            },
                            width: 250.0,
                            height: 250.0,
                            likeCount: 24,
                            saveCount: 8,
                          ),
                          const SizedBox(width: 15.0),
                          ShervinBdnDevBlogBox(
                            image: BdnUrls.soonPer,
                            ontap: () async {
                              scaffoldSnackbar(context, 'بزودی آپلود میشود');
                            },
                            width: 250.0,
                            height: 250.0,
                            likeCount: 0,
                            saveCount: 0,
                          ),
                          const SizedBox(width: 15.0),
                          ShervinBdnDevBlogBox(
                            image: BdnUrls.soonPer,
                            ontap: () async {
                              scaffoldSnackbar(context, 'بزودی آپلود میشود');
                            },
                            width: 250.0,
                            height: 250.0,
                            likeCount: 0,
                            saveCount: 0,
                          ),
                        ],
                      ),
                      const Row(
                        children: <Widget>[
                          // new posts here
                        ],
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
