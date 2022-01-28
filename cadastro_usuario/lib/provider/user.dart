import 'dart:math';

import 'package:cadastro_usuario/data/dummy_users.dart';
import 'package:cadastro_usuario/models/user.dart';
import 'package:flutter/material.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }
    if (user.id != null && //Alterar
        user.id!.trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      _items.update(
          user.id!,
          (_) => User(
                name: user.name,
                number: user.number,
                email: user.email,
                urlAvatar: user.urlAvatar,
              )); //maybe a mistake
    } else {
      // incluir
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
          id,
          () => User(
                id: id,
                name: user.name,
                number: user.number,
                email: user.email,
                urlAvatar: user.urlAvatar,
              ));
    }
    notifyListeners();
  }

  void remove(User user) {
    if (user != null && user.id != null) {
      _items.remove(user.id);
      notifyListeners();
    }
  }
}
