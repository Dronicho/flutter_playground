import 'package:freezed_annotation/freezed_annotation.dart';
import './interfaces/base_client_generator.dart';
part 'client.freezed.dart';

@freezed
class PlaceHolderClient extends BaseClientGenerator with _$PlaceHolderClient {
  const PlaceHolderClient._() : super();
  const factory PlaceHolderClient.posts() = _Posts;
  const factory PlaceHolderClient.users() = _Users;

  @override
  String get baseURL => "https://jsonplaceholder.typicode.com/";

  @override
  Map<String, dynamic> get header => {"Content-Type": "application/json"};

  @override
  String get path {
    return this.when<String>(
      posts: () => 'posts/',
      users: () => 'users/',
    );
  }

  @override
  String get method {
    return this.maybeWhen<String>(
      orElse: () => 'GET',
    );
  }

  @override
  Map<String, dynamic>? get body {
    return this.maybeWhen(
      orElse: () {
        return null;
      },
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return this.maybeWhen(
      orElse: () {
        return null;
      },
    );
  }
}
