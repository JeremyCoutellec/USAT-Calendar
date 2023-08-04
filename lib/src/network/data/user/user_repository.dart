import 'package:usat_calendar/src/network/model/common/result.dart';
import 'package:usat_calendar/src/network/model/user.dart';

abstract class UserRepository {
  Future<XResult<XUser>> getUser(String id);
}
