import 'package:dartz/dartz.dart';
import 'package:fit_dnu/core/common/helper/mapper/profile_mapper.dart';
import 'package:fit_dnu/core/services/profile_service.dart';
import 'package:fit_dnu/feature/profile/data/models/profile_model.dart';
import 'package:fit_dnu/feature/profile/domain/repositories/profile_repository.dart';

import '../../../../service_locator.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Either> getProfile() async {
    var data = await sl<ProfileService>().fetchProfile();
    print('Dữ liệu nhận đc: $data');
    return data.fold(
      (error) {
        return Left(error);
      },
      (data) {
        var profile =
            ProfileMapper.toEntity(ProfileModel.fromJson(data['data']));
        print('Dữ liệu truyền đi $profile');
        return Right(profile);
      },
    );
  }
}

// class ProfileRepositoryImpl implements ProfileRepository {
//   @override
//   Future<Either> getProfile() async {
//     var response = await sl<ProfileService>().fetchProfile();
//     print('Dữ liệu nhận được: $response');
//     return response.fold(
//       (error) {
//         print(error);
//         return Left(error);
//       },
//       (data) {
//         var profile = ProfileMapper.toEntity(ProfileModel.fromJson(data));
//         print('Dữ liệu truyền đi $profile');
//         return Right(profile);
//       },
//     );
//   }
// }
