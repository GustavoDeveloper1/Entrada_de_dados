import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({super.key});

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _isBrasilianFood = false;
  bool _isMexicanFood = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
                title: Text("Comida Brasileira"),
                value: _isBrasilianFood,
                activeColor: Colors.green,
                secondary: Icon(Icons.add_box),
                onChanged: (result) {
                  setState(() {
                    _isBrasilianFood = result!;
                  });
                }),
            CheckboxListTile(
                title: Text("Comida Mexicana"),
                value: _isMexicanFood,
                activeColor: Colors.green,
                secondary: Icon(Icons.add_box),
                onChanged: (result) {
                  setState(() {
                    _isMexicanFood = result!;
                  });
                }),
            ElevatedButton(
              onPressed: () {
                print("brasileira" +
                    _isBrasilianFood.toString() +
                    "meixcana" +
                    _isMexicanFood.toString());
              },
              child: const Text(
                "Salvar",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            // Text("Comida Brasileira"),
            // Checkbox(
            //     value: _isBrasilianFood,
            //     onChanged: (value) {
            //       setState(() {
            //         _isBrasilianFood = value!;
            //       });
            //     })
          ],
        ),
      ),
    );
  }
}
