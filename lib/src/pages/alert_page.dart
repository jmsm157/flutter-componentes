import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar Alerta'),
          onPressed: () {
            _mostrarAlert(context);
            // Navigator.pop(context);
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.red),
            backgroundColor: MaterialStateProperty.all(Colors.black),
            shape: MaterialStateProperty.all<StadiumBorder>(StadiumBorder()),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.abc_outlined),
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de la caja de alerta'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancelar')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Ok')),
            ],
          );
        });
  }
}
