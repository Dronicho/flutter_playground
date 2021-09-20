import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/domain/blocs/authentication/authentication_bloc.dart';
import 'package:flutter_playground/domain/repositories/user.dart';
import 'package:flutter_playground/ui/modules/home/home_page.dart';
import 'package:flutter_playground/ui/modules/login/login_view.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.authenticationRepository})
      : super(key: key);

  final AuthenticationRepository authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthenticationBloc(
                authenticationRepository: authenticationRepository,
                userRepository: UserRepository()),
          ),
        ],
        child: AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(
                  child: Text('Splash'),
                ),
              )),
      builder: (context, child) =>
          BlocListener<AuthenticationBloc, AuthenticationState>(
              child: child!,
              listener: (context, state) {
                switch (state.status) {
                  case AuthenticationStatus.unknown:
                    _navigator.pushAndRemoveUntil<void>(
                        MaterialPageRoute(builder: (context) => LoginPage()),
                        (_) => false);
                    break;
                  case AuthenticationStatus.authenticated:
                    _navigator.pushAndRemoveUntil<void>(
                        MaterialPageRoute(builder: (context) => HomePage()),
                        (_) => false);
                    break;
                  case AuthenticationStatus.unauthenticated:
                    _navigator.pushAndRemoveUntil<void>(
                        MaterialPageRoute(builder: (context) => LoginPage()),
                        (_) => false);
                    break;
                }
              }),
    );
  }
}
