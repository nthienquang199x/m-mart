import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:m_mart/base/base_state.dart';
import 'package:m_mart/utils/extension/context_ext.dart';

import '../../../utils/widget/spacer_widget.dart';
import '../../sign_up/components/custom_text_field.dart';
import '../../sign_up/components/social_login_button.dart';
import 'sign_in_cubit.dart';
import 'sign_in_state.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends BaseState<SignInState, SignInCubit, SignInPage> {
  @override
  Widget buildByState(BuildContext context, SignInState state) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 23, right: 23, top: 60, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Log into\nyour account",
                style: context.myTheme.textThemeT1.title.copyWith(fontSize: 24, height: 1.8),
              ),
              const VSpacing(
                spacing: 30,
              ),
              _buildTextField(
                  controller: cubit.emailController, hint: "Email address", keyboardType: TextInputType.emailAddress),
              const VSpacing(
                spacing: 20,
              ),
              _buildTextField(
                  controller: cubit.passwordController, hint: "Password", keyboardType: TextInputType.visiblePassword),
              const VSpacing(
                spacing: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style:
                          context.myTheme.textThemeT1.body.copyWith(fontSize: 12, decoration: TextDecoration.underline),
                    )),
              ),
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
                        "Log In".toUpperCase(),
                        style: context.myTheme.textThemeT1.title.copyWith(color: Colors.white),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "or log in with",
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
              const Expanded(child: SizedBox.shrink()),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Don’t have an account?", style: context.myTheme.textThemeT1.body.copyWith(fontSize: 14)),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
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
