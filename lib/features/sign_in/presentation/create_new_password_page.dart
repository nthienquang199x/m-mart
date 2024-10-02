import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m_mart/app/theme/icons.dart';
import 'package:m_mart/utils/extension/context_ext.dart';

import '../../../utils/widget/spacer_widget.dart';
import '../../components/back_app_bar.dart';
import '../../sign_up/components/custom_text_field.dart';

class CreateNewPasswordPage extends StatefulWidget {
  const CreateNewPasswordPage({super.key});

  @override
  State<CreateNewPasswordPage> createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  bool isValid = true;

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
                "Create new password",
                style: context.myTheme.textThemeT1.title.copyWith(fontSize: 24),
              ),
              const VSpacing(
                spacing: 8,
              ),
              Text(
                "Your new password must be different\nfrom previously used password",
                style: context.myTheme.textThemeT1.body.copyWith(fontSize: 14),
              ),
              const VSpacing(
                spacing: 60,
              ),
              CustomTextField(
                controller: TextEditingController(),
                hint: "New Password",
                hasLabel: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              const VSpacing(
                spacing: 20,
              ),
              CustomTextField(
                controller: TextEditingController(),
                hint: "Confirm Password",
                hasLabel: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              const VSpacing(
                spacing: 100,
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: isValid
                        ? () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.transparent,
                              builder: (context) {
                                return const ChangePasswordSuccessPopup();
                              },
                            );
                          }
                        : null,
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

class ChangePasswordSuccessPopup extends StatelessWidget {
  const ChangePasswordSuccessPopup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          width: 102,
          height: 4,
          decoration: BoxDecoration(color: const Color(0xFFE9E9E9), borderRadius: BorderRadius.circular(20)),
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const VSpacing(
                spacing: 27,
              ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFAFAFA),
                ),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: SvgPicture.asset(AppIcons.ic_success),
              ),
              const VSpacing(
                spacing: 20,
              ),
              Text(
                "Your password has been changed",
                style: context.myTheme.textThemeT1.body.copyWith(color: const Color(0xFF332218), fontSize: 17),
              ),
              const VSpacing(
                spacing: 15,
              ),
              Text(
                "Welcome back! Discover now!",
                style: context.myTheme.textThemeT1.body.copyWith(color: const Color(0xFF332218), fontSize: 12),
              ),
              const VSpacing(
                spacing: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.maybePop();
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(315, 60),
                      backgroundColor: Colors.black,
                      disabledBackgroundColor: const Color(0xFFB9B9B9)),
                  child: Text(
                    "Browse home",
                    style: context.myTheme.textThemeT1.title.copyWith(color: Colors.white),
                  )),
              const VSpacing(
                spacing: 60,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
