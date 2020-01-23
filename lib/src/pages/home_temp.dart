import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  //const HomePageTemp({Key key}) : super(key: key);
  final opciones = ['Uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    ListTile tempWidget;

    for (String opt in opciones) {
      tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta(){

    return opciones.map( ( item ){

      return Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.add_a_photo ),
            trailing: Icon( Icons.arrow_forward_ios ),
            title: Text( item + '!' ),
          ),
          Divider()
        ],
      );
    }).toList();

  }
}
