import 'package:braingain_app/service/supabase.dart';
import 'package:braingain_app/ui/widget/confirm_dialog.dart';
import 'package:braingain_app/ui/widget/outlined_card.dart';
import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({
    super.key,
  });

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

    return OutlinedCard(
      // padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'User Account',
              style: text.titleLarge?.merge(const TextStyle(
                fontWeight: FontWeight.bold,
              )),
            ),
          ),
          // Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: color.primaryContainer,
              foregroundColor: color.onPrimaryContainer,
              child: const Icon(Icons.person_outline),
            ),
            minLeadingWidth: 40,
            title: Text('User ID', style: text.titleMedium),
            subtitle: SelectableText(
              supabase.auth.currentUser?.id ?? 'Not logged in',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: () => _onLogout(context),
                  icon: const Icon(Icons.logout),
                  label: const Text('Logout'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
