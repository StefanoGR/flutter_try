import 'package:first_try/data/network/api.dart';
import 'package:first_try/data/network/model/random_user.dart';
import 'package:first_try/view/user_item.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  MainView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<RandomUser> _users = new List();

  void _getUsers() {
    setState(() {
      _users = null;
    });
    Api.getUsers().then((onValue) {
      setState(() {
        _users = onValue;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _users != null ? buildListView() : buildProgress(),
      floatingActionButton: FloatingActionButton(
        onPressed: _getUsers,
        tooltip: 'Get Users',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget buildListView() {
    if (_users.isEmpty)
      return Center(child: Text("Premi '+' per caricare gli utenti"));

    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8.0),
      children: _users.map((user) => UserListItem(user)).toList(),
    );
  }

  Widget buildProgress() {
    return new Container(
        child: new Center(
      child: new CircularProgressIndicator(),
    ));
  }
}
