import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../base/base_cubit.dart';
import '../config/app_router.dart';
import '../theme/themes.dart';
import 'app_state.dart';
import 'models/navigation_type.dart';

@singleton
class AppCubit extends BaseCubit<AppState> {
  AppCubit() : super(AppState(status: PageStatus.loading, appTheme: AppThemeData.light()));

  final AppRouter appRouter = AppRouter();

  changeTheme(AppThemeData appTheme) {
    emit(state.copyWith(appTheme: appTheme));
  }

  void init({required BuildContext context}) async {
    emit(state.copyWith(status: PageStatus.idle));
  }

  void changeNavigationType({required NavigationType type}) {
    emit(state.copyWith(navType: type));
  }
}
