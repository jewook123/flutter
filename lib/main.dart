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
          actions: [
              IconButton(onPressed: (){
                print("shopping cart");
              }, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){
                print("search");
              }, icon: Icon(Icons.search))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),),
                  // otherAccountsPictures: [
                  //   CircleAvatar(
                  //     backgroundImage: AssetImage('assets/profile.jpg'),
                  //     backgroundColor: Colors.white,)
                  // ],
                accountName: Text('jewook'),
                accountEmail: Text('jewook89@nate.com'),
                onDetailsPressed: () {
                  print('arrow is clicked');
                },
                decoration: BoxDecoration(
                  color: Colors.red[200]
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title : Text('Home'),
                onTap: () {
                  print('home tap');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title : Text('Setting'),
                onTap: () {
                  print('Setting tap');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(Icons.question_answer),
                title : Text('Question'),
                onTap: () {
                  print('question_answer tap');
                },
                trailing: Icon(Icons.add),
              ),
            ],
          ),
        ),

    );
  }
}
