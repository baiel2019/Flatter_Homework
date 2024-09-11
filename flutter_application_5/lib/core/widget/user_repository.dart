
import 'package:flutter_application_5/users.dart';

class UserRepository {
  Future<List<User>> fetchUser() async {
    await Future.delayed(const Duration(seconds: 3));
    return AllUsers().users;
  }
}