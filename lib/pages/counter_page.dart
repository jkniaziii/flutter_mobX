import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:tod_app/store/counter/counter.dart';

class CounterPage extends StatelessWidget {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter and Mobx'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Counter',
                  style: TextStyle(fontSize: 40),
                ),
                Observer(
                  builder: (_) => Text(
                    '${counter.count}',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                          color: Colors.green,
                          onPressed: counter.increment,
                          icon: Icon(Icons.add),
                          label: Text('Add')),
                      SizedBox(
                        width: 20,
                      ),
                      FlatButton.icon(
                          color: Colors.red,
                          onPressed: counter.decrement,
                          icon: Icon(Icons.remove),
                          label: Text('Remove')),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
