import 'package:flutter_playground/domain/network/interfaces/base_network_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'post.g.dart';

@JsonSerializable()
class PostModel extends BaseNetworkModel<PostModel> {
  int? userId;
  String? title;
  PostModel({this.title, this.userId});

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostModelToJson(this);

  @override
  fromJson(Map<String, dynamic> json) {
    return PostModel.fromJson(json);
  }
}
