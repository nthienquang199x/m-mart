import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:m_mart/base/base_state.dart';

import 'home_cubit.dart';
import 'home_state.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomeState, HomeCubit, HomePage> {
  @override
  Widget buildByState(BuildContext context, HomeState state) {
    return const Placeholder();
  }
}
