import 'package:case_study/src/authentication/domain/model/user.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  Future<void> createUser({
    required String name,
    required String avatar,
  });

  Future<List<User>?> getUsers();
}