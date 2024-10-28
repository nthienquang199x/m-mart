import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app/app/app_cubit.dart';
import 'app/config/app_config.dart';
import 'core/localization/app_locale.dart';
import 'core/storage/local_storage.dart';
import 'di/injector.dart';

void main() async {
  // usePathUrlStrategy();
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    configureDependencies(AppConfig.prod());
    // Init
    await LocalStorage().init();

    runApp(const MainPage());
  }, (error, stackTrace) {
    log("runZonedGuarded() $error", error: error, stackTrace: stackTrace);
  });
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with AppLocale {
  final appCubit = GetIt.instance<AppCubit>();

  @override
  void initState() {
    init(mapLocales: [AppLanguage.en.defaultLocale], initLanguage: AppLanguage.en);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          title: 'M-Mart',
          debugShowCheckedModeBanner: false,
          builder: FlutterSmartDialog.init(
            builder: (context, child) => ResponsiveBreakpoints.builder(breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            ], child: child!),
          ),
          routerDelegate: appCubit.appRouter.delegate(navigatorObservers: () {
            return [FlutterSmartDialog.observer];
          }),
          supportedLocales: localization.supportedLocales,
          localizationsDelegates: localization.localizationsDelegates,
          routeInformationParser: appCubit.appRouter.defaultRouteParser(),
          theme: appCubit.state.appTheme.themeData,
        );
      },
    );
  }

  @override
  void onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }
}
