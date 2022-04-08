import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        backgroundColor: Colors.red,
      ),
      body: ListView(padding: EdgeInsets.all(10.0), children: <Widget>[
        _cardTipo1(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo2(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo1(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo2(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo1(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo2(),
        SizedBox(
          height: 30.0,
        ),
      ]),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.photo_album,
            color: Colors.red,
          ),
          title: Text('Soy el titulo de esta tarjeta'),
          subtitle: Text(
              'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(onPressed: () {}, child: Text('Cancelar')),
            TextButton(onPressed: () {}, child: Text('Ok')),
          ],
        )
      ]),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 300.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg')),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea que poner '),
          ),
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
