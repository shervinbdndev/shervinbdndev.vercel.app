import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:shervinbdndev/views/main_view.dart';
import 'package:shervinbdndev/views/skills_page.dart';
import 'package:shervinbdndev/views/projects_page.dart';
import 'package:shervinbdndev/views/snippets_page.dart';
import 'package:shervinbdndev/views/schooling_page.dart';
import 'package:seo_renderer/helpers/renderer_state.dart';
import 'package:shervinbdndev/views/buymeacoffe_page.dart';
import 'package:shervinbdndev/views/posts/first_post.dart';
import 'package:shervinbdndev/views/posts/second_post.dart';
import 'package:shervinbdndev/views/certificates_page.dart';
import 'package:shervinbdndev/views/bloglistview_page.dart';
import 'package:seo_renderer/helpers/robot_detector_vm.dart';
import 'package:shervinbdndev/views/snippets/first_snippet.dart';

void main() {
  if (kIsWeb) {
    MetaSEO().config();
  }
  runApp(
    const RobotDetector(
      debug: false,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shervinbdndev',
      initialRoute: '/',
      routes: {
        '/': (context) => const ShervinBdnDevMainView(),
        '/blog': (context) => const BlogListViewPage(),
        '/blog/constructors-in-python': (context) => const FirstPost(),
        '/blog/imports-in-python': (context) => const SecondPost(),
        '/projects': (context) => const ProjectsPage(),
        '/skills': (context) => const SkillsPage(),
        '/snippets': (context) => const SnippetsPage(),
        '/snippets/how-to-get-public-ip-using-python': (context) =>
            const FirstSnippet(),
        '/schooling': (context) => const SchoolingPage(),
        '/donate': (context) => const BuyMeACoffeePage(),
        '/certificates': (context) => const CertificatesPage(),
      },
      debugShowCheckedModeBanner: !true,
      navigatorObservers: [seoRouteObserver],
    );
  }
}
