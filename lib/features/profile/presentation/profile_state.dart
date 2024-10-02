import 'package:m_mart/app/app/app_state.dart';

class ProfileState {
  final PageStatus status;
  ProfileState({
    required this.status,
  });

  ProfileState copyWith({
    PageStatus? status,
  }) {
    return ProfileState(
      status: status ?? this.status,
    );
  }
}
