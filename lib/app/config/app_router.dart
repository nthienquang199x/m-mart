import 'package:auto_route/auto_route.dart';

import '../../features/discover/presentation/discover_page.dart';
import '../../features/home/presentation/home_page.dart';
import '../../features/orders/presentation/orders_page.dart';
import '../../features/profile/presentation/profile_page.dart';
import '../../features/sign_in/presentation/sign_in_page.dart';
import '../../features/sign_up/presentation/sign_up_page.dart';
import '../app/app_page.dart';
import 'routes.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AppRoute.page, initial: true, fullscreenDialog: true, children: const []),
      ];
}
