import 'package:flutter/material.dart';
import 'package:its_movieapp_2024/ui/theme/app_text_styles.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key, this.isLarge = false});
  const AppTitle.large({super.key, this.isLarge = true});

  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Movie',
        style: isLarge ? AppTextStyle.black32 : AppTextStyle.black24,
        children: [
          TextSpan(
            text: 'Catalog',
            style: isLarge ? AppTextStyle.black32Accent : AppTextStyle.black24Accent,
          ),
        ],
      ),
    );
  }
}
