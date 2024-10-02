import 'package:injectable/injectable.dart';
import 'package:m_mart/app/app/app_state.dart';
import 'package:m_mart/base/base_cubit.dart';

import 'discover_state.dart';

@injectable
class DiscoverCubit extends BaseCubit<DiscoverState> {
  DiscoverCubit() : super(DiscoverState(status: PageStatus.loading));
}
