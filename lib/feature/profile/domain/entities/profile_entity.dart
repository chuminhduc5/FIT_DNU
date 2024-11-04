import 'package:equatable/equatable.dart';

class ProfileModel extends Equatable {
  int id;
  String studentCode;

  ProfileModel({
    required this.id,
    required this.studentCode,
  });

  @override
  List<Object?> get props => [
    id, studentCode
  ];
}