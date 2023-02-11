import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/router/router.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_divider.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_projectbox.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_simpletext.dart';

class BlogListViewPage extends StatefulWidget {
  const BlogListViewPage({super.key});

  @override
  State<BlogListViewPage> createState() => _BlogListViewPageState();
}

class _BlogListViewPageState extends State<BlogListViewPage> {
  @override
  Widget build(BuildContext context) {
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
                        image: 'assets/1st_per.jpg',
                        ontap: () {
                          bdnRouter(context, '/blog/constructors-in-python');
                        },
                        width: 250.0,
                        height: 250.0,
                      ),
                      const SizedBox(height: 15.0),
                      ShervinBdnDevBlogBox(
                        image: 'assets/soon_per.jpg',
                        ontap: () {},
                        width: 250.0,
                        height: 250.0,
                      ),
                      const SizedBox(height: 15.0),
                      ShervinBdnDevBlogBox(
                        image: 'assets/soon_per.jpg',
                        ontap: () {},
                        width: 250.0,
                        height: 250.0,
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
                            image: 'assets/1st_per.jpg',
                            ontap: () {
                              bdnRouter(
                                  context, '/blog/constructors-in-python');
                            },
                            width: 250.0,
                            height: 250.0,
                          ),
                          const SizedBox(width: 15.0),
                          ShervinBdnDevBlogBox(
                            image: 'assets/soon_per.jpg',
                            ontap: () {},
                            width: 250.0,
                            height: 250.0,
                          ),
                          const SizedBox(width: 15.0),
                          ShervinBdnDevBlogBox(
                            image: 'assets/soon_per.jpg',
                            ontap: () {},
                            width: 250.0,
                            height: 250.0,
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
