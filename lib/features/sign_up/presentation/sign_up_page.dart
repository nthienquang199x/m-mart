import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:m_mart/base/base_state.dart';
import 'package:m_mart/utils/extension/context_ext.dart';
import 'package:m_mart/utils/widget/spacer_widget.dart';

import '../components/custom_text_field.dart';
import '../components/social_login_button.dart';
import 'sign_up_cubit.dart';
import 'sign_up_state.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends BaseState<SignUpState, SignUpCubit, SignUpPage> {
  @override
  Widget buildByState(BuildContext context, SignUpState state) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 23, right: 23, top: 60, bottom: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create\nyour account",
                  style: context.myTheme.textThemeT1.title.copyWith(fontSize: 24, height: 1.8),
                ),
                const VSpacing(
                  spacing: 30,
                ),
                _buildTextField(controller: cubit.nameController, hint: "Enter your name"),
                const VSpacing(
                  spacing: 20,
                ),
                _buildTextField(
                    controller: cubit.emailController, hint: "Email address", keyboardType: TextInputType.emailAddress),
                const VSpacing(
                  spacing: 20,
                ),
                _buildTextField(
                    controller: cubit.passwordController,
                    hint: "Password",
                    keyboardType: TextInputType.visiblePassword),
                const VSpacing(
                  spacing: 20,
                ),
                _buildTextField(
                    controller: cubit.cornfirmPasswordController,
                    hint: "Confirm password",
                    keyboardType: TextInputType.visiblePassword),
                const VSpacing(
                  spacing: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF2D201C)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        child: Text(
                          "Sign Up".toUpperCase(),
                          style: context.myTheme.textThemeT1.title.copyWith(color: Colors.white),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "or sign up with",
                      style: context.myTheme.textThemeT1.body.copyWith(fontSize: 12),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SocialLoginButton(
                    onTap: (type) {},
                  ),
                ),
                const VSpacing(
                  spacing: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Already have account?", style: context.myTheme.textThemeT1.body.copyWith(fontSize: 14)),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Log In",
                            style: context.myTheme.textThemeT1.body
                                .copyWith(fontSize: 14, decoration: TextDecoration.underline),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required TextEditingController controller, required String hint, TextInputType? keyboardType}) {
    return CustomTextField(
      controller: controller,
      hint: hint,
      keyboardType: keyboardType,
    );
  }
}
