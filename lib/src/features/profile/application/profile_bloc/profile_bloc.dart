import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/api_failure.dart';
import '../../domain/entities/user_profile.dart';
import '../../domain/repositories/i_profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepository _profileRepository;

  ProfileBloc(this._profileRepository) : super(ProfileState.initial()) {
    on<_NameChanged>((event, emit) => _nameChanged(event, emit));
    on<_SkillsChanged>((event, emit) => _skillsChanged(event, emit));
    on<_LocationChanged>((event, emit) => _locationChanged(event, emit));
    on<_LoadProfile>((event, emit) async => await _loadProfile(emit));
    on<_SubmitProfile>((event, emit) async => await _submitProfile(emit));
  }

  void _nameChanged(_NameChanged event, Emitter<ProfileState> emit) {
    emit(state.copyWith(name: event.name, failure: null));
  }

  void _skillsChanged(_SkillsChanged event, Emitter<ProfileState> emit) {
    emit(state.copyWith(skills: event.skills, failure: null));
  }

  void _locationChanged(_LocationChanged event, Emitter<ProfileState> emit) {
    emit(state.copyWith(location: event.location, failure: null));
  }

  Future<void> _loadProfile(Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true, failure: null));

    final result = await _profileRepository.getProfile();

    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (profile) => emit(state.copyWith(
        isLoading: false,
        name: profile.name,
        skills: profile.skills,
        location: profile.location,
        profile: profile,
      )),
    );
  }

  Future<void> _submitProfile(Emitter<ProfileState> emit) async {
    emit(state.copyWith(isSubmitting: true, failure: null));

    final result = await _profileRepository.updateProfile(
      name: state.name,
      skills: state.skills,
      location: state.location,
    );

    result.fold(
      (failure) =>
          emit(state.copyWith(isSubmitting: false, failure: failure)),
      (profile) => emit(state.copyWith(
        isSubmitting: false,
        profile: profile,
        isSuccess: true,
      )),
    );
  }
}
