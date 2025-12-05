import 'package:bloc_2026/shared/config/dimens.dart';
import 'package:bloc_2026/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(
        strokeWidth: Dimens.standard_4,
        valueColor: AlwaysStoppedAnimation(AppColors.colorPrimary),
      ),
    );
  }
}
