import 'package:effective_flutter_lab/src/common/widgets/svg_icon.dart';
import 'package:effective_flutter_lab/src/screens/profile/domain/models/tariff_model.dart';
import 'package:flutter/material.dart';

class TariffsCell extends StatelessWidget {
  const TariffsCell({
    super.key,
    required this.model,
    required this.onTap,
  });

  final TariffModel model;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: SvgIcon(icon: model.icon),
      title: Text(model.title),
      subtitle: model.subtitle != null ? Text(model.subtitle!) : null,
    );
  }
}
