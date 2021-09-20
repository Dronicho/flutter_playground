import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/ui/modules/home/post/bloc/post_bloc.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PostCubit, PostState>(
          builder: (context, state) => state.map(
              refreshing: (state) => CustomScrollView(
                    slivers: [
                      CupertinoSliverRefreshControl(
                        onRefresh: () async {
                          await context.read<PostCubit>().refresh();
                        },
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final post = state.posts[index];
                            print(post);
                            return ListTile(
                              title: Text(post.title ?? 'No title'),
                              subtitle: Text('${post.userId ?? -1}'),
                            );
                          },
                          childCount: state.posts.length,
                        ),
                      ),
                      // ListView.builder(
                      //     itemCount: state.posts.length,
                      //     itemBuilder: )
                    ],
                  ),
              loading: (state) => Center(
                    child: CircularProgressIndicator(),
                  ),
              loaded: (state) => SafeArea(
                    child: CustomScrollView(
                      slivers: [
                        CupertinoSliverRefreshControl(
                          onRefresh: () async {
                            await context.read<PostCubit>().refresh();
                          },
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              final post = state.posts[index];
                              print(post);
                              return ListTile(
                                title: Text(post.title ?? 'No title'),
                                subtitle: Text('${post.userId ?? -1}'),
                              );
                            },
                            childCount: state.posts.length,
                          ),
                        ),
                        // ListView.builder(
                        //     itemCount: state.posts.length,
                        //     itemBuilder: )
                      ],
                    ),
                  ),
              error: (state) => Center(child: Text('Error: ' + state.message)))),
    );
  }
}
