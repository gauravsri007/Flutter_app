
import 'package:flutter/material.dart';


// ---------------- Settings tab ----------------
class SettingsTab extends StatelessWidget {
  // const SettingsTab();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 12),
      children: [
        _SettingsTile(
          icon: Icons.person_outline,
          title: "Account",
          onTap: () {},
        ),
        _SettingsTile(
          icon: Icons.notifications_none,
          title: "Notifications",
          onTap: () {},
        ),
        _SettingsTile(
          icon: Icons.lock_outline,
          title: "Privacy & Security",
          onTap: () {},
        ),
        _SettingsTile(
          icon: Icons.help_outline,
          title: "Help & Support",
          onTap: () {},
        ),
        const Divider(height: 32),
        _SettingsTile(
          icon: Icons.logout,
          title: "Log Out",
          color: Colors.red,
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Log out?"),
                content: const Text("Are you sure you want to log out?"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Cancel"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamedAndRemoveUntil(
      context,
      'login',
      (route) => false,
    );
                      // TODO: clear session, navigate to login
                    },
                    child: const Text("Log Out",
                        style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final Color? color;

  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color ?? Colors.black87),
      title: Text(title, style: TextStyle(color: color)),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}