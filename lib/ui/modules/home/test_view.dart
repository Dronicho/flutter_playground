import 'package:flutter/material.dart';
import 'package:flutter_playground/fonts/constant_math_icons.dart';
import 'package:http/http.dart' as http;

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);
  
  @override
  _TestViewState createState() => _TestViewState();
}


class _TestViewState extends State<TestView> {

  @override
  void initState() {
    super.initState();
    print(loadGif());
  }

  @override
  Widget build(BuildContext context) {
    return Image.network(
        'https://media3.giphy.com/media/h8hw97Dtajl7yPAsTx/giphy.gif?cid=ecf05e47d3bca5742dfaedc13379312e9df09d84203d0ba9&rid=giphy.gif&ct=g');
  }

  Future<void> loadGif() async {
    final client = http.Client();
    final res = await client.get(Uri.parse(
        'https://media3.giphy.com/media/h8hw97Dtajl7yPAsTx/giphy.gif?cid=ecf05e47d3bca5742dfaedc13379312e9df09d84203d0ba9&rid=giphy.gif&ct=g'));
    print(res.contentLength);
    print(res.headers);
    print(res.bodyBytes);
  }
}
