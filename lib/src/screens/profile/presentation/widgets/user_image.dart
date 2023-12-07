import 'package:effective_flutter_lab/src/config/styles/styles.dart';
import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    super.key,
    this.width = 110,
    this.height = 110,
    required this.image,
  });

  final double? width;
  final double? height;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimensions.large),
        image: DecorationImage(
          image: AssetImage(image),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x7A1D1D25),
            blurRadius: 24,
            offset: Offset(0, 16),
            spreadRadius: -16,
          ),
        ],
      ),
    );
  }
}
