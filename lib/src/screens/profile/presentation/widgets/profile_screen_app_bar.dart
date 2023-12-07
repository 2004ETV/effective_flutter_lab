import 'package:effective_flutter_lab/src/common/assets/assets.dart';
import 'package:effective_flutter_lab/src/common/extensions/context_extensions.dart';
import 'package:effective_flutter_lab/src/common/extensions/widget_extensions.dart';
import 'package:effective_flutter_lab/src/common/widgets/svg_icon.dart';
import 'package:effective_flutter_lab/src/screens/profile/presentation/widgets/user_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreenAppBar extends StatelessWidget {
  const ProfileScreenAppBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      pinned: true,
      floating: true,
      snap: true,
      titleSpacing: 0,
      centerTitle: true,
      expandedHeight: 280,
      leadingWidth: 68,
      leading: IconButton(
        onPressed: () {}, //TODO: Add functionality
        icon: SvgIcon(
          icon: AppAssets.cancel,
          color: context.theme.colorScheme.onPrimary,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {}, //TODO: Add functionality
          icon: SvgIcon(
            icon: AppAssets.door,
            color: context.theme.colorScheme.onPrimary,
          ),
        ).paddingOnly(right: 14),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Column(
            children: [
              const Gap(24),
              const UserImage(
                image: AppAssets.userImage,
              ),
              const Gap(36),
              Text(
                'Екатерина',
                style: context.theme.textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
      bottom: TabBar(tabs: tabs),
    );
  }
}
