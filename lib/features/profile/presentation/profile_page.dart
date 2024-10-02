import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:m_mart/base/base_state.dart';

import 'profile_cubit.dart';
import 'profile_state.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends BaseState<ProfileState, ProfileCubit, ProfilePage> {
  @override
  Widget buildByState(BuildContext context, ProfileState state) {
    return const Scaffold();
  }
}
