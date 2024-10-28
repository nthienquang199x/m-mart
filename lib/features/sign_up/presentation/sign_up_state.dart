import 'package:m_mart/app/app/app_state.dart';

class SignUpState {
  final PageStatus status;
  SignUpState({
    required this.status,
  });

  SignUpState copyWith({
    PageStatus? status,
  }) {
    return SignUpState(
      status: status ?? this.status,
    );
  }
}
