import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String textResult = "";
  _calcular() {
    String alcoolDado = _controllerAlcool.text;
    alcoolDado = alcoolDado.replaceAll(",", ".");
    String gasolDado = _controllerGasolina.text;
    alcoolDado = gasolDado.replaceAll(",", ".");

    dynamic AlcoolPrice = double.parse(_controllerAlcool.text);
    dynamic GasolinePrice = double.parse(_controllerGasolina.text);

    if (AlcoolPrice == null || GasolinePrice == null) {
      setState(() {
        textResult = "Número inválido, digite numeros maiores que 0";
      });
    } else {
      print('${GasolinePrice} $AlcoolPrice');
      if ((AlcoolPrice / GasolinePrice) >= 0.7) {
        setState(() {
          textResult = "Melhor abastecere com gasolina!";
        });
      } else {
        setState(() {
          textResult = "Melhor abastecere com alcool!";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrada de dados'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Image.asset("images/logo.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Saiba qual a melhor opção para abastecimento do seu carro",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  // textAlign: TextAlign.center,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    // border: OutlineInputBorder(),
                    labelText: 'Preço Alcool, ex: 1.59'),
                style: const TextStyle(fontSize: 22),
                controller: _controllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    // border: OutlineInputBorder(),
                    labelText: 'Preço Gasolina, ex: 3.20'),
                style: const TextStyle(fontSize: 22),
                controller: _controllerGasolina,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: _calcular,
                  child: const Text(
                    "Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  textResult,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
