import 'package:effective_flutter_lab/src/common/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.localizations.settingsTabName,
        style: context.theme.textTheme.bodyLarge,
      ),
    );
  }
}
