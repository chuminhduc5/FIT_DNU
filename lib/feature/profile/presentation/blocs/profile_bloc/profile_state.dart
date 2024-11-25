part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileSuccess extends ProfileState {
  final ProfileEntity profile;

  const ProfileSuccess({required this.profile});

  @override
  List<Object> get props => [profile];
}

class ProfileFailed extends ProfileState {
  final String errorMessage;

  const ProfileFailed({required this.errorMessage});
}
