import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/domain/blocs/authentication/authentication_bloc.dart';
import 'package:flutter_playground/ui/modules/login/bloc/login_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(context.read<AuthenticationBloc>()),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) => state.maybeMap(
                        success: (state) => TextButton(
                              child: Text('Logged in'),
                              onPressed: () {},
                            ),
                        initial: (state) => ElevatedButton(
                            onPressed: () async {
                              await context
                                  .read<LoginCubit>()
                                  .signInWithGoogle();
                            },
                            child: Text('sign in with google')),
                        loading: (state) => CircularProgressIndicator(),
                        orElse: () => Container())),
              ),
            ],
          ),
        );
      }),
    );
  }
}
