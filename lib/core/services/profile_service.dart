import 'package:dartz/dartz.dart';

abstract class ProfileService {
  Future<Either> fetchProfile();
}