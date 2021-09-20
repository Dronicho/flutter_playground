import 'package:flutter_playground/domain/models/user.dart';

class LoginRepository {
  Future<User> signInWithGoogle() async {
    await Future.delayed(Duration(milliseconds: 500));
    return User();
  }
}