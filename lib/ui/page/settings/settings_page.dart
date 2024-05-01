import 'package:braingain_app/ui/page/settings/account_settings.dart';
import 'package:braingain_app/ui/page/settings/app_information.dart';
import 'package:braingain_app/ui/page/settings/balance.dart';
import 'package:braingain_app/ui/page/settings/notion_api_key.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });

  static const route = 'settings';

  static Future<void> open(BuildContext context) async {
    await Navigator.of(context).pushNamed(route);
  }

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const ConstrainedListView(
        children: [
          AccountSettings(),
          NotionSection(),
          AppInformation(),
          BalanceView(),
        ],
      ),
    );
  }
}
