import 'package:flutter/material.dart';
import 'package:m_mart/features/sign_up/components/custom_text_field.dart';
import 'package:m_mart/utils/extension/context_ext.dart';
import 'package:m_mart/utils/widget/spacer_widget.dart';

import '../../components/back_app_bar.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 38),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot password?",
                style: context.myTheme.textThemeT1.title.copyWith(fontSize: 24),
              ),
              const VSpacing(
                spacing: 8,
              ),
              Text(
                "Enter email associated with your account\nand we’ll send and email with intructions to\nreset your password",
                style: context.myTheme.textThemeT1.body.copyWith(fontSize: 14),
              ),
              const VSpacing(
                spacing: 50,
              ),
              CustomTextField(
                controller: TextEditingController(),
                hint: "enter your email here",
                keyboardType: TextInputType.emailAddress,
                prefixIcon: const Icon(
                  Icons.mail_outlined,
                  color: Color(0xFFBFBFBF),
                  size: 20,
                ),
              ),
              const VSpacing(
                spacing: 100,
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: isValid ? () {} : null,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2D201C), disabledBackgroundColor: const Color(0xFFB9B9B9)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      child: Text(
                        "Confirm",
                        style: context.myTheme.textThemeT1.title.copyWith(color: Colors.white),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
