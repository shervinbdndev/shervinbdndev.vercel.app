import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:shervinbdndev/router/router.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_divider.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_snackbar.dart';
import 'package:shervinbdndev/fragments/widgets/boxes/shervinbnddev_blogbox.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

class BlogListViewPage extends StatefulWidget {
  const BlogListViewPage({super.key});

  @override
  State<BlogListViewPage> createState() => _BlogListViewPageState();
}

class _BlogListViewPageState extends State<BlogListViewPage> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      meta.seoAuthor('شروین بدن آرا');
      meta.seoDescription('صفحه مقالات');
      meta.seoKeywords('فلاتر, متا, سئو, دارت, وب');
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
                  weight: FontWeight.bold,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ShervinBdnDevSimpleText(
                    text: 'مقالات',
                    color: Colors.white,
                    size: 30.0,
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
                        image: 'assets/pics/first_post_thumbnail.jpg',
                        ontap: () async {
                          bdnRouter(context, '/blog/constructors-in-python');
                        },
                        width: 250.0,
                        height: 250.0,
                        likeCount: 43,
                        saveCount: 18,
                      ),
                      const SizedBox(height: 15.0),
                      ShervinBdnDevBlogBox(
                        image: 'assets/pics/second_post_thumbnail.jpg',
                        ontap: () async {
                          bdnRouter(context, '/blog/imports-in-python');
                        },
                        width: 250.0,
                        height: 250.0,
                        likeCount: 23,
                        saveCount: 4,
                      ),
                      const SizedBox(height: 15.0),
                      ShervinBdnDevBlogBox(
                        image: 'assets/pics/soon_per.jpg',
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
                            image: 'assets/pics/first_post_thumbnail.jpg',
                            ontap: () async {
                              bdnRouter(
                                  context, '/blog/constructors-in-python');
                            },
                            width: 250.0,
                            height: 250.0,
                            likeCount: 43,
                            saveCount: 18,
                          ),
                          const SizedBox(width: 15.0),
                          ShervinBdnDevBlogBox(
                            image: 'assets/pics/second_post_thumbnail.jpg',
                            ontap: () async {
                              bdnRouter(context, '/blog/imports-in-python');
                            },
                            width: 250.0,
                            height: 250.0,
                            likeCount: 23,
                            saveCount: 4,
                          ),
                          const SizedBox(width: 15.0),
                          ShervinBdnDevBlogBox(
                            image: 'assets/pics/soon_per.jpg',
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
            const ShervinBdnDevDivider(),
          ],
        ),
      ),
    );
  }
}
