import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:its_movieapp_2024/ui/theme/app_colors.dart';
import 'package:its_movieapp_2024/ui/theme/app_text_styles.dart';

class AppButton {
  static ButtonStyle accent = ButtonStyle(
    backgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.hovered) || states.contains(WidgetState.pressed)) {
        return AppColor.accentHover;
      }
      return AppColor.accent;
    }),
    foregroundColor: const WidgetStatePropertyAll(AppColor.white),
    iconColor: const WidgetStatePropertyAll(AppColor.white),
    textStyle: const WidgetStatePropertyAll(AppTextStyle.semibold15),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    padding: const WidgetStatePropertyAll(
      EdgeInsets.symmetric(horizontal: 36, vertical: kIsWeb ? 20 : 12),
    ),
    shadowColor: const WidgetStatePropertyAll(AppColor.black25),
    elevation: const WidgetStatePropertyAll(8),
    iconSize: const WidgetStatePropertyAll(18),
    minimumSize: const WidgetStatePropertyAll(Size(0, 42)),
    maximumSize: const WidgetStatePropertyAll(Size.fromHeight(42)),
  );
}
