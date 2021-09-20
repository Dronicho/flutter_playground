part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.loading() = _Loading;
  const factory PostState.loaded({required List<PostModel> posts}) = _Loaded;
  const factory PostState.error({required String message}) = _Error;
  const factory PostState.refreshing({required List<PostModel> posts}) =
      _Refreshing;
}
