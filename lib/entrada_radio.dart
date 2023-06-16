import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class EntradaRadio extends StatefulWidget {
  const EntradaRadio({super.key});

  @override
  State<EntradaRadio> createState() => _EntradaRadioState();
}

class _EntradaRadioState extends State<EntradaRadio> {
  String _sexo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
                title: Text("Masculino"),
                value: "Masculino",
                groupValue: _sexo,
                onChanged: (value) {
                  setState(() {
                    _sexo = value!;
                  });
                }),
            RadioListTile(
                title: Text("Feminimo"),
                value: "Feminino",
                groupValue: _sexo,
                onChanged: (value) {
                  setState(() {
                    _sexo = value!;
                  });
                }),
            ElevatedButton(
                onPressed: () {
                  print(_sexo);
                },
                child: Text("Salvar"))
          ],
        ),
      ),
    );
    ;
  }
}
