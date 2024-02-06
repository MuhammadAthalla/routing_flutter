import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Menu"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ind');
              },
              child: Text("Increment dan Decrement")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/press');
              },
              child: Text("press button")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/mwd', arguments: "tessssss");
              },
              child: Text("move with data")),
          ElevatedButton(
              onPressed: () async {
                
                final result = await Navigator.pushNamed(context, '/rds');
                final message = result != null ? result : "data kosong";
                if (message is Map){
                  // final name = message['name'];
                  // final age = message['age'];
                  // final alamat = message['alamat'];
                  ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("halo nama saya ${message['nama']}, umur sya adalah ${message['age']}, saya tinggal di  ${message['alamat']}")));
                }
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message.toString())));

                
              },
              child: Text("return data")),
        ],
      )),
    );
  }
}
