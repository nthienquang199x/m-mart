import 'package:injectable/injectable.dart';
import 'package:m_mart/app/app/app_state.dart';
import 'package:m_mart/base/base_cubit.dart';

import 'profile_state.dart';

@injectable
class ProfileCubit extends BaseCubit<ProfileState> {
  ProfileCubit() : super(ProfileState(status: PageStatus.loading));
}
