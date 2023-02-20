import 'package:flutter/material.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return const ShervinBdnDevScaffold(
      importedWidgets: Column(
        children: <Widget>[],
      ),
    );
  }
}
