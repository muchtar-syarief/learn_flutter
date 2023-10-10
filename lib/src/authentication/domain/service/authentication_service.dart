import 'package:case_study/shared/networking/api_client.dart';
import 'package:case_study/src/authentication/domain/model/user.dart';
import 'package:case_study/src/authentication/domain/repository/authentication_repository.dart';

class AuthenticationService implements AuthenticationRepository {
  final _client = ApiClient();

  AuthenticationService();


  @override
  Future<List<UserModel>?> getUsers() async {
    String uri = '/users'; 
    final res = await _client.get<List<dynamic>>(uri);

    List<UserModel>? users = res.data?.map((e) {
      return UserModel.fromMap(e);
    }).toList();

    return users;
  }

  @override 
  Future<UserModel> createUser({
    required String name,
    required String avatar,
  }) async {
    String uri = '/users';
    Object payload = {
      'name': name,
      'avatar': avatar,
    };
    final res = await _client.post<dynamic>(uri, data: payload);

    final user = UserModel.fromMap(res.data);

    return user;
  }
}