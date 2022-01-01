import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'list_users.dart';

class ListViewChallenge extends StatelessWidget {
  const ListViewChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0.0),
        body: Stack(children: <Widget>[
          ListView(children: <Widget>[ListUser()]),
          const CustomAppBar(),
        ]));
  }
}
