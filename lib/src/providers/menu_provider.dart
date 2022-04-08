import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProdvider {
  List<dynamic> opciones = [];
  _MenuProdvider() {}

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = new _MenuProdvider();
