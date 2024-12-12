import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:its_movieapp_2024/ui/theme/app_buttons.dart';
import 'package:its_movieapp_2024/ui/theme/app_colors.dart';
import 'package:its_movieapp_2024/ui/theme/app_text_styles.dart';
import 'package:its_movieapp_2024/ui/widgets/form_input.dart';
import 'package:its_movieapp_2024/ui/widgets/page_description.dart';
import 'package:its_movieapp_2024/ui/widgets/title_app_bar.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(24, 0, 24, 64),
        child: Center(
          child: Column(spacing: 40, children: [
            PageDescription(
              title: 'Welcome Back!',
              description: 'Please sign in to your account to \ncontinue',
            ),
            Form(
              key: _formKey,
              child: Column(spacing: 16, children: [
                FormInput(
                  label: 'USERNAME',
                  hint: 'Please enter username',
                  controller: _username,
                  validator: FormBuilderValidators.required(),
                ),
                FormInput(
                  label: 'PASSWORD',
                  hint: 'Please enter password',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  controller: _password,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(8),
                    FormBuilderValidators.hasLowercaseChars(),
                    FormBuilderValidators.hasUppercaseChars(),
                    FormBuilderValidators.hasSpecialChars(),
                  ]),
                ),
              ]),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() == true) {
                  // Sign In
                }
              },
              child: Text('Sign In'),
            ),
            Row(spacing: 16, children: [
              Expanded(child: Divider(height: 1, color: AppColor.white)),
              Text('Or sign in with'),
              Expanded(child: Divider(height: 1, color: AppColor.white)),
            ]),
            IconButton.filled(
              onPressed: () {},
              style: AppButton.floating,
              icon: SvgPicture.asset(
                'assets/icons/microsoft.svg',
                height: 32,
                width: 32,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text.rich(
                TextSpan(
                  text: 'Not registered yet? ',
                  style: AppTextStyle.regular14,
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: AppTextStyle.regular14Accent,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
