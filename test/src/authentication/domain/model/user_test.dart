import 'dart:convert';

import 'package:case_study/src/authentication/domain/model/user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Map<String, dynamic> user;

  setUp(
    () => user = {
      "id": "1",
      "name": "Kara Denesik",
      "avatar":
          "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/221.jpg",
      "createdAt": "2023-10-08T10:38:38.905Z"
    },
  );

  test('create user model from json', () {
    var userModel = UserModel.fromMap(user);

    expect(
        userModel,
        UserModel(
            id: user['id'],
            name: user['name'],
            avatar: user['avatar'],
            createdAt: user['createdAt']));
  });

  test(
    'convert user toJson',
    () {
      var userModel = UserModel.fromMap(user);
      
      expect(userModel.toJson(), jsonEncode(user));
    },
  );
}
