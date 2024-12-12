import 'package:flutter/material.dart';
import 'package:its_movieapp_2024/ui/theme/app_text_styles.dart';

class PageDescription extends StatelessWidget {
  const PageDescription({super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 64),
      child: Column(spacing: 8, children: [
        Text(title, style: AppTextStyle.bold20),
        Text(
          description,
          style: AppTextStyle.regular14Grey,
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
