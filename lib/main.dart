import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name here'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                const Text('Please Login'),
                Row(
                  children: <Widget>[
                    const Text('Username: '),
                    Expanded(
                        child: TextField(
                      controller: _user,
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Text('Password: '),
                    Expanded(
                        child: TextField(
                      controller: _pass,
                      obscureText: true,
                    ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: RaisedButton(
                    onPressed: () => print('Login ${_user.text}'),
                    child: const Text('Click me'),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
