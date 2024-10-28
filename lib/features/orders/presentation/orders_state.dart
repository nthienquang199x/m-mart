import 'package:m_mart/app/app/app_state.dart';

class OrdersState {
  final PageStatus status;
  OrdersState({
    required this.status,
  });

  OrdersState copyWith({
    PageStatus? status,
  }) {
    return OrdersState(
      status: status ?? this.status,
    );
  }
}
