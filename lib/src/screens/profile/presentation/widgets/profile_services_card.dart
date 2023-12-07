import 'package:effective_flutter_lab/src/common/extensions/context_extensions.dart';
import 'package:effective_flutter_lab/src/common/widgets/svg_icon.dart';
import 'package:effective_flutter_lab/src/config/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileServicesCard extends StatelessWidget {
  const ProfileServicesCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  final String icon;
  final String title;
  final String subtitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.onBackground,
        borderRadius: BorderRadius.circular(AppDimensions.medium),
        boxShadow: [
          BoxShadow(
            color: AppColors.independence.withOpacity(.07),
            blurRadius: 14,
            offset: const Offset(0, 8),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgIcon(icon: icon),
              const Gap(12),
              Text(
                title,
                style: context.theme.textTheme.bodyLarge,
              ),
            ],
          ),
          const Spacer(),
          Text(
            subtitle,
            style: context.theme.textTheme.bodyMedium,
          ),
          const Gap(2),
          Text(
            description,
            style: context.theme.textTheme.bodyMedium?.copyWith(
              color: context.theme.colorScheme.primary.withOpacity(.55),
            ),
          ),
        ],
      ),
    );
  }
}
