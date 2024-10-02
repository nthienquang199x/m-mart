import 'package:flutter/material.dart';
import 'package:m_mart/utils/extension/context_ext.dart';
import 'package:pinput/pinput.dart';

import '../../../utils/widget/spacer_widget.dart';
import '../../components/back_app_bar.dart';

class VerificationCodePage extends StatefulWidget {
  const VerificationCodePage({super.key});

  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {
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
                "Verification code",
                style: context.myTheme.textThemeT1.title.copyWith(fontSize: 24),
              ),
              const VSpacing(
                spacing: 8,
              ),
              Text(
                "Please enter the verification code we sent\nto your email address",
                style: context.myTheme.textThemeT1.body.copyWith(fontSize: 14),
              ),
              const VSpacing(
                spacing: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: Pinput(
                  defaultPinTheme: PinTheme(
                      textStyle: context.myTheme.textThemeT1.title,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, border: Border.all(color: const Color(0xFFA5A7AC))),
                      width: 58,
                      height: 58),
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
