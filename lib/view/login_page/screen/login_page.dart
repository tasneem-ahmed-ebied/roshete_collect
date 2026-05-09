import 'package:flutter/material.dart';
import 'package:rosheta_ai/view/sign_up_page/screen/sign_up_page.dart';

import '../../../core/resources/height_manager.dart';
import '../../../core/resources/utils.dart';
import '../../../core/resources/width_manager.dart';
import '../../create_new_password_page/widget/success_dialog.dart';
import '../widget/login_button.dart';
import '../widget/login_form.dart';
import '../widget/login_header.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: WidthManagers.w20,
            vertical: HeightManager.h20,
          ),
          child: Column(
            children: [
              SizedBox(height: HeightManager.h80),

              const LoginHeader(),

              SizedBox(height: HeightManager.h40),

              const LoginForm(),

              SizedBox(height: HeightManager.h30),

              LoginButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => const SuccessDialog(),
                  );
                },
              ),

              SizedBox(height: HeightManager.h20),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SignUpPage(),
                    ),
                  );
                },
                child: const Text(Utils.signIn),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
