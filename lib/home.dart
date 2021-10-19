import 'package:flutter/material.dart';
import 'package:globalstate/globalstate.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController _name;
  final GlobalState _store = GlobalState.instance;

  @override
  void initState() {
    _name = TextEditingController();
    _store.set('name', '');
    _name.text = _store.get('name');
  }

  void _onPressed() {
    _store.set('name', _name.text);
    Navigator.of(context).pushNamed('/Second');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name Here'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _name,
                decoration: const InputDecoration(labelText: 'Enter Your Name'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(onPressed: _onPressed, child: const Text('Next')),
            ],
          ),
        ),
      ),
    );
  }
}
