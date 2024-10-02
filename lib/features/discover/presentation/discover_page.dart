import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:m_mart/base/base_state.dart';

import 'discover_cubit.dart';
import 'discover_state.dart';

@RoutePage()
class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends BaseState<DiscoverState, DiscoverCubit, DiscoverPage> {
  @override
  Widget buildByState(BuildContext context, DiscoverState state) {
    return const Scaffold();
  }
}
