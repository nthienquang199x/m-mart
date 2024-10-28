import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m_mart/app/app/models/navigation_type.dart';

import '../../base/base_state.dart';
import '../../utils/widget/loading_widget.dart';
import 'app_cubit.dart';
import 'app_state.dart';

@RoutePage()
class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends BaseState<AppState, AppCubit, AppPage> {
  @override
  bool get isCloseCubit => false;

  @override
  void initState() {
    cubit.init(context: context);
    super.initState();
  }

  @override
  Widget buildByState(BuildContext context, AppState state) {
    switch (state.status) {
      case PageStatus.loading:
        return const AppLoadingWidget();
      case PageStatus.idle:
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
          ),
          body: const Column(),
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: NavigationType.values.length,
            leftCornerRadius: 20,
            rightCornerRadius: 20,
            gapLocation: GapLocation.none,
            shadow: BoxShadow(blurRadius: 6, blurStyle: BlurStyle.outer, color: Colors.grey.withOpacity(0.5)),
            notchSmoothness: NotchSmoothness.defaultEdge,
            tabBuilder: (index, isActive) {
              final item = NavigationType.values[index];
              return SizedBox.square(
                dimension: 24,
                child: Center(
                  child: SvgPicture.asset(
                    item.icon,
                    colorFilter: ColorFilter.mode(isActive ? Colors.black : const Color(0xFFE6E8EC), BlendMode.srcIn),
                  ),
                ),
              );
            },
            activeIndex: state.navType.index,
            onTap: (p0) {
              cubit.changeNavigationType(type: NavigationType.values[p0]);
            },
          ),
        );
      case PageStatus.error:
        return Container();
    }
  }
}
