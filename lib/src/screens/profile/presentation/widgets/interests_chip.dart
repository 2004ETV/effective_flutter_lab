import 'package:effective_flutter_lab/src/common/extensions/context_extensions.dart';
import 'package:effective_flutter_lab/src/config/styles/styles.dart';
import 'package:effective_flutter_lab/src/screens/profile/domain/models/interest_model.dart';
import 'package:flutter/material.dart';

class InterestsChip extends StatelessWidget {
  const InterestsChip({
    super.key,
    required this.model,
    required this.isSelected,
    required this.onSelected,
  });

  final InterestModel model;
  final bool isSelected;
  final ValueChanged<bool>? onSelected;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      selected: isSelected,
      label: Text(model.label),
      onSelected: onSelected,
      labelStyle: context.theme.textTheme.bodyMedium,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppDimensions.circle,
        ),
      ),
      color: MaterialStatePropertyAll(
        context.theme.colorScheme.primary.withOpacity(.08),
      ),
      elevation: 0,
      pressElevation: 0,
      checkmarkColor: context.theme.colorScheme.onPrimary,
    );
  }
}
