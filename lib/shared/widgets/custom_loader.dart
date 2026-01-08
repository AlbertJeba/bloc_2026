import 'package:bloc_2026/shared/config/dimens.dart';
import 'package:bloc_2026/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

/// CustomLoader - Reusable Loading Indicator Widget
/// 
/// A centered, themed circular progress indicator used throughout
/// the app to indicate loading states.
/// 
/// Features:
/// - Uses adaptive styling (Material on Android, Cupertino on iOS)
/// - Themed with [AppColors.colorPrimary]
/// - Consistent stroke width using [Dimens]
/// 
/// Usage:
/// ```dart
/// if (isLoading) const CustomLoader()
/// ```
class CustomLoader extends StatelessWidget {
  /// Creates a custom loader widget.
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
