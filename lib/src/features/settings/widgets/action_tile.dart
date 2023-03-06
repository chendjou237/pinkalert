import 'package:flutter/material.dart';

class ActionLabel extends StatelessWidget {
  const ActionLabel({
    required this.label,
    required this.onTap,
    required this.icon,
    super.key,
  });
  final String label;
  final VoidCallback onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 18,
        child: Icon(icon),
      ),
      title: Text(
        label,
        //style: context.theme.textTheme.bodyMedium,
      ),
      onTap: onTap,
      trailing: const Icon(
        Icons.chevron_right,
      ),
    );
  }
}
