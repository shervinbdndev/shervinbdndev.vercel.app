import 'package:flutter/material.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_scaffold.dart';

class FirstPost extends StatefulWidget {
  const FirstPost({super.key});

  @override
  State<FirstPost> createState() => _FirstPostState();
}

class _FirstPostState extends State<FirstPost> {
  @override
  Widget build(BuildContext context) {
    return const ShervinBdnDevScaffold(
      importedWidgets: Column(
        children: <Widget>[],
      ),
    );
  }
}
