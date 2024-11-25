import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final int id;
  final String studentCode;
  final String fullName;
  final DateTime birthDate;
  final String gender;
  final String nationality;
  final String hometown;
  final String address;
  final String phoneNumber;
  final String email;
  final String major;

  ProfileEntity({
    required this.id,
    required this.studentCode,
    required this.fullName,
    required this.birthDate,
    required this.gender,
    required this.nationality,
    required this.hometown,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.major,
  });

  @override
  List<Object?> get props => [
        id,
        studentCode,
        fullName,
        birthDate,
        gender,
        nationality,
        hometown,
        address,
        phoneNumber,
        email,
        major,
      ];
}
