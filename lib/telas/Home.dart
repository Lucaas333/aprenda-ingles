import 'package:ingles/telas/Bichos.dart';
import 'package:ingles/telas/Numeros.dart';
import 'package:ingles/telas/Vogais.dart';
import 'package:ingles/telas/Videos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController; //controlador de tabs para navegaçao

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda Inglês"),
        bottom: TabBar(
          indicatorWeight: 4, //espessura da barra indicadora
          indicatorColor: Colors.white, //cor da barra indicadora
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          tabs: <Widget>[
            Tab(text:"Bichos"),
            Tab(text:"Números"),
            Tab(text:"Vogais"),
            Tab(text:"Vídeos"),
          ],
        ), //estilo do texto da guia selecionada
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Bichos(),
          Numeros(),
          Vogais(),
          Videos(),
        ],
      ),
    );
  }
}
