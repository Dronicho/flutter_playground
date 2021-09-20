import 'package:flutter/material.dart';
import 'package:flutter_playground/test_keyboard.dart';
import 'package:flutter_playground/ui/modules/home/post/post_page.dart';
import 'package:flutter_playground/ui/modules/home/test_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _index = 0;

  List<Widget> get tabs => [PostPage(), KeyboardDemo()];
  Widget get tab => tabs[_index];

  @override
  Widget build(BuildContext context) {
    return Keyboard(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child: tab),
            AidaKeyboard()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: 'Profile')
          ],
        ),
      ),
    );
  }
}
