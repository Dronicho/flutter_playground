import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/test_keyboard.dart';
import 'package:flutter_playground/ui/modules/home/home_view.dart';
import 'package:flutter_playground/ui/modules/home/post/bloc/post_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => PostCubit()..loadPosts(),
      ),
      BlocProvider(create: (context) => KeyboardCubit())
    ], child: HomeView());
  }
}
