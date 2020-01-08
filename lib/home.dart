import 'package:flutter/material.dart';
import 'package:identity/identity.dart';
import 'package:identity_firebase/identity_firebase.dart';

import 'user.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }

  @override
  void initState() {
    super.initState();

    Identity.of(context).init(FirebaseProvider(),
        (context) => UserPage(user: Identity.instance.user));
  }
}
