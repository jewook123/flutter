import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charactor card',
      home: Grade(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[300],
        appBar: AppBar(
          title: Text('Drawer example'),
          centerTitle: true,
          backgroundColor: Colors.cyan[500],
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('cliecked');
            },            
            ),
            actions: [
              IconButton(onPressed: (){
                print("shopping cart");
              }, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){
                print("search");
              }, icon: Icon(Icons.search))
            ],

        ),
    );
  }
}
