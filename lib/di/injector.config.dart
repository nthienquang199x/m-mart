// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../app/app/app_cubit.dart' as _i189;
import '../features/discover/presentation/discover_cubit.dart' as _i919;
import '../features/home/presentation/home_cubit.dart' as _i624;
import '../features/orders/presentation/orders_cubit.dart' as _i1030;
import '../features/profile/presentation/profile_cubit.dart' as _i336;
import '../features/sign_in/presentation/sign_in_cubit.dart' as _i337;
import '../features/sign_up/presentation/sign_up_cubit.dart' as _i1022;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetit(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i624.HomeCubit>(() => _i624.HomeCubit());
  gh.factory<_i919.DiscoverCubit>(() => _i919.DiscoverCubit());
  gh.factory<_i337.SignInCubit>(() => _i337.SignInCubit());
  gh.factory<_i336.ProfileCubit>(() => _i336.ProfileCubit());
  gh.factory<_i1030.OrdersCubit>(() => _i1030.OrdersCubit());
  gh.factory<_i1022.SignUpCubit>(() => _i1022.SignUpCubit());
  gh.singleton<_i189.AppCubit>(() => _i189.AppCubit());
  return getIt;
}
