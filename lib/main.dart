import 'package:flutter/material.dart';
import 'package:flutter_playground/domain/blocs/authentication/authentication_bloc.dart';
import 'package:flutter_playground/ui/modules/app/app_view.dart';

extension DoubleX on double {
  double operator -(double other) {
    return this * 10;
  }
}

void main() {
  var a = 10.0;
  var b = 10.0;
  print(DoubleX(a) - b);
  final userRepository = AuthenticationRepository();
  runApp(App(authenticationRepository: userRepository));
}
