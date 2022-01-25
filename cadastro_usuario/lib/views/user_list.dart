// ignore_for_file: prefer_const_constructors

import 'package:cadastro_usuario/componemtes/user_tile.dart';
import 'package:cadastro_usuario/models/user.dart';
import 'package:cadastro_usuario/provider/user.dart';
import 'package:cadastro_usuario/routes/app.routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Usuarios'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (context, i) => UserTile(users.all.elementAt(i)),
        ));
  }
}
