import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'error.freezed.dart';

class ApiError implements Exception {
  final String message;

  ApiError(this.message);
}

@freezed
class NetworkError with _$NetworkError implements Exception {
  const NetworkError._() : super();

  const factory NetworkError.request({required DioError error}) =
      _ResponseError;
  const factory NetworkError.type({String? error}) = _DecodingError;
  const factory NetworkError.connectivity({String? message}) = _Connectivity;
  const factory NetworkError.server({String? message}) = _Server;

  String? get localizedErrorMessage {
    return this.when<String?>(
      type: (error) => error,
      connectivity: (message) => message,
      request: (DioError error) => error.message,
      server: (message) => message
    );
  }
}
