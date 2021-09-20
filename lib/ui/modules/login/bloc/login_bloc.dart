import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/ui/modules/login/bloc/login_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/domain/blocs/authentication/authentication_bloc.dart';

part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._repository) : super(_Initial());

  AuthenticationBloc _repository;
  LoginRepository _loginRepository = LoginRepository();

  Future<void> signInWithGoogle() async {
    emit(_Loading());
    // await Future.delayed(Duration(milliseconds: 500));
    final user = await _loginRepository.signInWithGoogle();
    _repository.add(
        AuthenticationStatusChanged(AuthenticationStatus.authenticated, user));
    // _repository.logIn();
    // do some auth stuff
    emit(_Success());
  }

  Future<void> singInWithApple() async {}
}
