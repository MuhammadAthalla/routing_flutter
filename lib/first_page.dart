import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _myNumber = 0;
  tambah() {
    setState(() {
      _myNumber += 1;
    });
  }

  Kurang() {
    setState(() {
      if (_myNumber == 0) {
        _myNumber = 0;
      } else {
        _myNumber -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("helo banh :')"),backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("kamu telah menekan tombol sebanyak"),
            Text(
              _myNumber.toString(),
              style: TextStyle(fontSize: 100),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: tambah,
                  label:const Text("Tambah"),
                  icon:const Icon(Icons.add),
                ),
                ElevatedButton.icon(
                  onPressed: _myNumber > 0 ? Kurang : null,
                  label:const Text("Kurang"),
                  icon:const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
