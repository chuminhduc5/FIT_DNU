import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fit_dnu/feature/profile/domain/entities/profile_entity.dart';
import 'package:fit_dnu/feature/profile/domain/usecases/get_profile_use_case.dart';
import 'package:fit_dnu/service_locator.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<FetchProfileRequest>(_onFetchProfileRequest);
  }

  Future<void> _onFetchProfileRequest(
    FetchProfileRequest event,
    Emitter<ProfileState> emit,
  ) async {
    var data = await sl<GetProfileUseCase>().call();
    print(data);
    data.fold(
      (error) {
        print(error);
        emit(ProfileFailed(errorMessage: error));
      },
      (data) {
        emit(ProfileSuccess(profile: data));
      },
    );
  }
}
