import 'package:aplicacao_cadastro/Components/user_tile.dart';
import 'package:aplicacao_cadastro/Provider/users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  get Provider => null;

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Usuários'), actions: <Widget>[
        IconButton(
            onPressed: () {}, icon: Icon(Icons.add)) //botão de adicionar user
      ]),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
