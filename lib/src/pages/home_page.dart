import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('El teacher'),
        backgroundColor: Colors.red,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      initialData: [],
      future: menuProvider.cargarData(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data!, context),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);
        },
      );
      opciones
        ..add(widgetTemp)
        ..add(Divider());
    });
    return opciones;
  }
}
