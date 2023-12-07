import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon({
    super.key,
    required this.icon,
    this.color,
    this.blendMode = BlendMode.srcIn,
  });

  final String icon;
  final Color? color;
  final BlendMode blendMode;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      colorFilter: color != null
          ? ColorFilter.mode(
              color!,
              blendMode,
            )
          : null,
    );
  }
}
