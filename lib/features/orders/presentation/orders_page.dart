import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:m_mart/base/base_state.dart';

import 'orders_cubit.dart';
import 'orders_state.dart';

@RoutePage()
class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends BaseState<OrdersState, OrdersCubit, OrdersPage> {
  @override
  Widget buildByState(BuildContext context, OrdersState state) {
    return const Scaffold();
  }
}
