import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:m_mart/app/app/app_state.dart';
import 'package:m_mart/base/base_cubit.dart';

import 'sign_up_state.dart';

@injectable
class SignUpCubit extends BaseCubit<SignUpState> {
  SignUpCubit() : super(SignUpState(status: PageStatus.loading));

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cornfirmPasswordController = TextEditingController();
}
