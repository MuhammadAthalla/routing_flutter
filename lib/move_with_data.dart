import 'package:flutter/material.dart';

class MoveWithData extends StatelessWidget {
  final String data;
  const MoveWithData(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("move with data"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(data),
            ElevatedButton(onPressed: (){Navigator.pop(context,"data third page");}, child:Text("back")
            )
        ]),
      ),
    );
  }
}