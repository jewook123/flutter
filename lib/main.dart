import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OHJAEWOOK',   // 앱을 총칭하는 이름
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(  // 무언가를 혼자해낼수 있도록 발판을 마련해주다 , 도화지
      appBar: AppBar(
        title: Text('First app'),  // 앱바에 표시될 이름
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello'),
            Text('Hello'),
            Text('Hello')
          ]),
      ),
    );
  }
}
