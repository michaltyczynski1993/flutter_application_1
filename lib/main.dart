import 'package:flutter/material.dart';
import './app_screens/firstScreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('List elements below'),
        ),
        body: getListView(),
      ),
    );
  }
}

Widget getListView() {
  var listView = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('List item'),
        subtitle: Text('Beautiful View'),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          print('you clicked on this icon');
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text('Windows'),
      ),
      ListTile(
        leading: Icon(Icons.car_rental),
        title: Text('Car rental'),
      )
    ],
  );

  return listView;
}
