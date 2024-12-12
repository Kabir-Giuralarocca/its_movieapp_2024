import 'package:flutter/material.dart';
import 'package:its_movieapp_2024/ui/widgets/form_input.dart';
import 'package:its_movieapp_2024/ui/widgets/page_description.dart';
import 'package:its_movieapp_2024/ui/widgets/title_app_bar.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(24, 0, 24, 64),
        child: Center(
          child: Column(children: [
            PageDescription(
              title: 'Welcome Back!',
              description: 'Please sign in to your account to \ncontinue',
            ),
            Form(
              child: Column(
                spacing: 16,
                children: [
                  FormInput(
                    label: 'USERNAME',
                    hint: 'Please enter username',
                  ),
                  FormInput(
                    label: 'EMAIL',
                    hint: 'Please enter email',
                    textInputType: TextInputType.emailAddress,
                  ),
                  FormInput(
                    label: 'PASSWORD',
                    hint: 'Please enter password',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
