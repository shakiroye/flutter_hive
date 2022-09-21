import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference our box
  final _myBox = Hive.box('mybox');
  // write date
  void writeData() {
    _myBox.put(2, 'Mary');
  }

  // read data
  void readData() {
    print(_myBox.get(2));
  }

  //delete date
  void deleteData() {
    _myBox.delete(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MaterialButton(
              onPressed: writeData,
              child: Text('Write'),
              color: Colors.blue[200],
            ),
            MaterialButton(
              onPressed: readData,
              child: Text('Read'),
              color: Colors.blue[200],
            ),
            MaterialButton(
              onPressed: deleteData,
              child: Text('Delete'),
              color: Colors.blue[200],
            ),
          ],
        ),
      ),
    );
  }
}
