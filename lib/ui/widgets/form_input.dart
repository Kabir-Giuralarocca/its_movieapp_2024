import 'package:flutter/material.dart';
import 'package:its_movieapp_2024/ui/theme/app_colors.dart';
import 'package:its_movieapp_2024/ui/theme/app_text_styles.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class FormInput extends StatefulWidget {
  const FormInput({
    super.key,
    required this.label,
    required this.hint,
    this.maxLines = 1,
    this.textInputType = TextInputType.text,
    this.controller,
    this.validator,
    this.obscureText,
  });
  final String label;
  final String hint;
  final int maxLines;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? obscureText;

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText ?? false;
  }

  void _changeVisibility() {
    setState(() => _obscureText = !_obscureText);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(spacing: 8, crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(widget.label, style: AppTextStyle.semibold12),
        TextFormField(
          controller: widget.controller,
          style: AppTextStyle.regular12,
          maxLines: widget.maxLines,
          validator: widget.validator,
          keyboardType: widget.textInputType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: _obscureText,
          obscuringCharacter: '●',
          decoration: InputDecoration(
            hintText: widget.hint,
            suffixIconConstraints: BoxConstraints.tightFor(width: 24, height: 24),
            suffixIcon: widget.obscureText == true
                ? IconButton(
                    onPressed: _changeVisibility,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints.tightFor(width: 24, height: 24),
                    icon: Icon(_obscureText ? Symbols.visibility : Symbols.visibility_off),
                  )
                : null,
          ),
        ),
      ]),
    );
  }
}
