import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:shervinbdndev/views/main_view.dart';
import 'package:shervinbdndev/posts/first_post.dart';
import 'package:shervinbdndev/pages/skills_page.dart';
import 'package:shervinbdndev/posts/second_post.dart';
import 'package:shervinbdndev/pages/projects_page.dart';
import 'package:shervinbdndev/pages/schooling_page.dart';
import 'package:seo_renderer/helpers/renderer_state.dart';
import 'package:shervinbdndev/pages/certificates_page.dart';
import 'package:shervinbdndev/pages/bloglistview_page.dart';
import 'package:seo_renderer/helpers/robot_detector_vm.dart';

void main() {
  if (kIsWeb) {
    MetaSEO().seoMetaConfig();
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
        '/schooling': (context) => const SchoolingPage(),
        '/certificates': (context) => const CertificatesPage(),
      },
      debugShowCheckedModeBanner: !true,
      navigatorObservers: [seoRouteObserver],
    );
  }
}
