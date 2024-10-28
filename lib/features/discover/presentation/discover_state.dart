import 'package:m_mart/app/app/app_state.dart';

class DiscoverState {
  final PageStatus status;
  DiscoverState({
    required this.status,
  });

  DiscoverState copyWith({
    PageStatus? status,
  }) {
    return DiscoverState(
      status: status ?? this.status,
    );
  }
}
