part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.failed() = _Failed;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success() = _Success;
}