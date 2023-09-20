import 'package:braingain_app/service/supabase.dart';
import 'package:braingain_app/ui/widget/confirm_dialog.dart';
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
  void _onLogout(BuildContext context) async {
    ConfirmDialog.show(
      context,
      title: 'Logout',
      content: 'Are you sure?',
      onConfirm: () => supabase.auth.signOut(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ConstrainedListView(
        children: [
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: Text('User ID', style: text.titleMedium),
            subtitle: SelectableText(
              supabase.auth.currentUser?.id ?? 'Not logged in',
            ),
            trailing: TextButton.icon(
              onPressed: () => _onLogout(context),
              icon: const Icon(Icons.logout),
              style: IconButton.styleFrom(
                foregroundColor: color.error,
              ),
              label: const Text('Logout'),
            ),
          ),
        ],
      ),
    );
  }
}
