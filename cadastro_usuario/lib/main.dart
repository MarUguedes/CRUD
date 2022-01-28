// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:cadastro_usuario/provider/user.dart';
import 'package:cadastro_usuario/routes/app.routes.dart';
import 'package:cadastro_usuario/views/user_form.dart';
import 'package:cadastro_usuario/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => new Users(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter ',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
      
        routes: {
          AppRoutes.HOME:(_)=>UserList(),
          AppRoutes.USER_FORM:(_)=>UserForm()
        },
      ),
    );
  }
}
