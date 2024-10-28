import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:m_mart/app/app/app_state.dart';
import 'package:m_mart/base/base_cubit.dart';

import 'sign_in_state.dart';

@injectable
class SignInCubit extends BaseCubit<SignInState> {
  SignInCubit() : super(SignInState(status: PageStatus.loading));

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
}
