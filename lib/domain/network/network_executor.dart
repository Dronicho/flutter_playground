import 'package:dio/dio.dart';
import 'package:flutter_playground/domain/network/result.dart';

import 'connectivity.dart';
import 'error.dart';
import 'interfaces/base_client_generator.dart';
import 'interfaces/base_network_model.dart';
import 'interfaces/network_options.dart';
import 'netowork_creator.dart';
import 'network_decoding.dart';

class NetworkExecuter {
  static var shared = NetworkExecuter();

  bool debugMode = true;

  Future<Result<K, NetworkError>> execute<T extends BaseNetworkModel, K>(
      {required BaseClientGenerator route,
      required T responseType,
      NetworkOptions? options}) async {
    if (debugMode) print(route);
    if (await NetworkConnectivity.status) {
      try {
        var response =
            await NetworkCreator.shared.request(route: route, options: options);
        var data = NetworkDecoding.shared
            .decode<T, K>(response: response, responseType: responseType);
        return Result.success(data);
      } on DioError catch (diorError) {
        if (debugMode)
          print("$route => ${NetworkError.request(error: diorError)}");
        return Result.failure(NetworkError.request(error: diorError));
      } on TypeError catch (e) {
        if (debugMode)
          print("$route => ${NetworkError.type(error: e.toString())}");
        return Result.failure(NetworkError.type(error: e.toString()));
      }

      // No Internet Connection
    } else {
      if (debugMode)
        print(NetworkError.connectivity(message: 'No Internet Connection'));
      return Result.failure(
          NetworkError.connectivity(message: 'No Internet Connection'));
    }
  }
}
