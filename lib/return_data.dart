import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class returnData extends StatelessWidget {
  final _datName = TextEditingController();
  final _dataAge = TextEditingController();
  final _dataAlamat = TextEditingController();
  returnData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("returndata"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _datName,
                decoration:
                    const InputDecoration(labelText: "Masukan Nama Anda"),
              ),
              TextField(
                controller: _dataAge,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(labelText: "umur anda"),
              ),
              TextField(
                controller: _dataAlamat,
                decoration: const InputDecoration(labelText: "alamat anda"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: ElevatedButton(
                    onPressed: () {
                      if (_datName.text.isEmpty||
                      _dataAge.text.isEmpty ||
                      _dataAlamat.text.isEmpty

                      ) {
                        Navigator.pop(context, null);
                      } else {
                        final dataMap ={
                          "nama": _datName.text,
                          "age": _dataAge.text,
                          "alamat": _dataAlamat.text
                        };
                        Navigator.pop(context, dataMap);
                        
                      }
                    },
                    child: const Text("simpan")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
