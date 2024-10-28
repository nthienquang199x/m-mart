import 'package:m_mart/app/app/app_state.dart';

class HomeState {
  final PageStatus status;
  HomeState({
    required this.status,
  });

  HomeState copyWith({
    PageStatus? status,
  }) {
    return HomeState(
      status: status ?? this.status,
    );
  }
}
