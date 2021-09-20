import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/domain/network/client.dart';
import 'package:flutter_playground/domain/network/models/post.dart';
import 'package:flutter_playground/domain/network/network_executor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_state.dart';
part 'post_bloc.freezed.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(_Loading()) {
    print('bloc created');
  }

  Future<void> refresh() async {
    await Future.delayed(Duration(milliseconds: 500));
    final res = await NetworkExecuter.shared
        .execute<PostModel, List<PostModel>>(
            route: PlaceHolderClient.posts(), responseType: PostModel());
    res.when(success: (posts) {
      emit(_Loaded(posts: posts));
    }, failure: (error) {
      emit(_Error(message: error.localizedErrorMessage ?? 'no message'));
    });
  }

  Future<void> loadPosts() async {
    emit(_Loading());
    final res = await NetworkExecuter.shared
        .execute<PostModel, List<PostModel>>(
            route: PlaceHolderClient.posts(), responseType: PostModel());
    res.when(success: (posts) {
      emit(_Loaded(posts: posts));
    }, failure: (error) {
      emit(_Error(message: error.localizedErrorMessage ?? 'no message'));
    });
  }
}
