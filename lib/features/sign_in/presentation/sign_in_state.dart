import 'package:m_mart/app/app/app_state.dart';

class SignInState {
  final PageStatus status;
  SignInState({
    required this.status,
  });

  SignInState copyWith({
    PageStatus? status,
  }) {
    return SignInState(
      status: status ?? this.status,
    );
  }
}
