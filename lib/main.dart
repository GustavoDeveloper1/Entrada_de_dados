import 'package:entrada_dados/campo_texto.dart';
import 'package:entrada_dados/entrada_radio.dart';
import 'package:entrada_dados/entrada_switch.dart';
import 'package:entrada_dados/entreda_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_config/flutter_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();

  String api = FlutterConfig.get('API_URL');
  print(api);
  runApp(const MaterialApp(
    // home: CampoTexto()
    // home: EntradaCheckbox(),
    // home: EntradaRadio(),
    home: EntradaSwitch(),
  ));
}
