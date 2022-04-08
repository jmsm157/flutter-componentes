import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlide = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
        backgroundColor: Colors.black,
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              _crearSlider(),
              _checkBox(),
              _crearSwitch(),
              Expanded(child: _crearImagen())
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.redAccent,
      label: 'Temaño de la imagen',
      //divisions: 20,
      value: _valorSlide,
      min: 10.0,
      max: 400.0,
      onChanged: _bloquearCheck
          ? null
          : (valor) {
              setState(() {
                _valorSlide = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return FadeInImage(
        image: NetworkImage(
          'https://e7.pngegg.com/pngimages/415/173/png-clipart-batman-joker-cartoon-comics-mammal-heroes-thumbnail.png',
        ),
        width: _valorSlide,
        fit: BoxFit.contain,
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 200));
  }

  Widget _checkBox() {
    return CheckboxListTile(
        title: Text('Bloquear Slide'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor!;
          });
        });
    // return Checkbox(
    //     value: _bloquearCheck,
    //     onChanged: (valor) {
    //       setState(() {
    //         _bloquearCheck = valor!;
    //         print(_bloquearCheck);
    //       });
    //     });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slide'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }
}
