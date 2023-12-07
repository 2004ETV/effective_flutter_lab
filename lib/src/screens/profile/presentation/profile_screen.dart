import 'package:effective_flutter_lab/src/common/extensions/context_extensions.dart';
import 'package:effective_flutter_lab/src/screens/profile/presentation/pages/profile_page.dart';
import 'package:effective_flutter_lab/src/screens/profile/presentation/pages/settings_page.dart';
import 'package:effective_flutter_lab/src/screens/profile/presentation/widgets/profile_screen_app_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      context.localizations.profileTabName,
      context.localizations.settingsTabName,
    ];

    return DefaultTabController(
      length: tabs.length,
      child: Material(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: ProfileScreenAppBar(
                  tabs: tabs.map((e) {
                    return Tab(text: e);
                  }).toList(),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              ProfilePage(),
              SettingsPage(),
            ],
          ),
        ),
      ),
    );
  }
}
