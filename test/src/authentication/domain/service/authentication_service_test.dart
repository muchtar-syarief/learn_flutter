

import 'package:case_study/src/authentication/domain/service/authentication_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

    final userService = AuthenticationService();

    test('getting all user', () async {
      var users = await userService.getUsers();

      expect(users?.length, isNot(equals(0)));
    });
  
}