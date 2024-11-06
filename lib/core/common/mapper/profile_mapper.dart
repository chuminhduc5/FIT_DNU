import 'package:fit_dnu/feature/profile/data/models/profile_model.dart';
import 'package:fit_dnu/feature/profile/domain/entities/profile_entity.dart';

class ProfileMapper {
  static ProfileEntity toEntity(ProfileModel profile) {
    return ProfileEntity(
      id: profile.id,
      studentCode: profile.studentCode,
      userId: profile.userId,
      fullName: profile.fullName,
      birthDate: profile.birthDate,
      gender: profile.gender,
      nationality: profile.nationality,
      hometown: profile.hometown,
      address: profile.address,
      phoneNumber: profile.phoneNumber,
      email: profile.email,
      major: profile.major,
    );
  }
}
