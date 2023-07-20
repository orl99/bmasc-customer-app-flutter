import 'package:flutter/material.dart';

class DrawerNavComponent extends StatelessWidget {
  String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Bmasc customer app'),
          ),
          ...this._menuList()
        ],
      ),
    );
  }

  List<Widget> _menuList() {
    final listTitleStyle =  TextStyle(
      fontSize: 20.0
    );
    return [
      ListTile(
        leading: Icon(Icons.dashboard),
        title: Text('Dashboard', style: listTitleStyle,),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.traffic),
        title: Text('Trafico', style: listTitleStyle,),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.directions_boat),
        title: Text('Pedimentos', style: listTitleStyle,),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.supervised_user_circle),
        title: Text('Administracion', style: listTitleStyle,),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.cloud_download),
        title: Text('Descargables', style: listTitleStyle,),
        onTap: () {},
      ),
    ];
  }
}