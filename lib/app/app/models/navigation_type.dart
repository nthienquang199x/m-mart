import 'package:m_mart/app/theme/icons.dart';

enum NavigationType {
  home,
  discover,
  orders,
  profile;

  String get icon {
    switch (this) {
      case NavigationType.home:
        return AppIcons.ic_navigation_home;
      case NavigationType.discover:
        return AppIcons.ic_navigation_discover;
      case NavigationType.orders:
        return AppIcons.ic_navigation_orders;
      case NavigationType.profile:
        return AppIcons.ic_navigation_profile;
    }
  }
}
