import 'package:m_mart/app/app/models/navigation_type.dart';

import '../theme/themes.dart';

enum PageStatus { loading, idle, error }

class AppState {
  final AppThemeData appTheme;
  final PageStatus status;
  final bool isAuthenticated;
  final NavigationType navType;
  AppState(
      {required this.appTheme, required this.status, this.isAuthenticated = true, this.navType = NavigationType.home});

  AppState copyWith({
    AppThemeData? appTheme,
    PageStatus? status,
    bool? isAuthenticated,
    NavigationType? navType,
  }) {
    return AppState(
      appTheme: appTheme ?? this.appTheme,
      status: status ?? this.status,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      navType: navType ?? this.navType,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppState &&
        other.appTheme == appTheme &&
        other.status == status &&
        other.isAuthenticated == isAuthenticated &&
        other.navType == navType;
  }

  @override
  int get hashCode {
    return appTheme.hashCode ^ status.hashCode ^ isAuthenticated.hashCode ^ navType.hashCode;
  }
}
