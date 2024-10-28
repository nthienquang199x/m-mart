import 'package:injectable/injectable.dart';
import 'package:m_mart/app/app/app_state.dart';
import 'package:m_mart/base/base_cubit.dart';

import 'orders_state.dart';

@injectable
class OrdersCubit extends BaseCubit<OrdersState> {
  OrdersCubit() : super(OrdersState(status: PageStatus.loading));
}
