import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/api_failure.dart';
import '../../domain/entities/user_activity.dart';
import '../../domain/repositories/i_profile_repository.dart';

part 'activity_event.dart';
part 'activity_state.dart';
part 'activity_bloc.freezed.dart';

@injectable
class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  final IProfileRepository _profileRepository;

  ActivityBloc(this._profileRepository) : super(const ActivityState.initial()) {
    on<_Load>((_, emit) async {
      emit(const ActivityState.loading());
      final result = await _profileRepository.getActivity();
      result.fold(
        (failure) => emit(ActivityState.failure(failure)),
        (activity) => emit(ActivityState.loaded(activity)),
      );
    });
  }
}
