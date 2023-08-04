import 'package:usat_calendar/src/network/data/user/user_repository.dart';
import 'package:usat_calendar/src/network/model/common/result.dart';
import 'package:usat_calendar/src/network/model/user.dart';

class UserRepositoryImpl extends UserRepository {
  @override
  Future<XResult<XUser>> getUser(String id) {
    throw UnimplementedError();
  }
}
