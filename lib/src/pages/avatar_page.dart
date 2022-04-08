import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.blogs.es/85aa44/stan-lee/840_560.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('JS'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: FadeInImage(
        image: NetworkImage(
            'https://cdn2.chicmagazine.com.mx/uploads/media/2021/12/28/stan-lee-foto-instagram.jpg'),
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 200),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.abc_outlined),
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
