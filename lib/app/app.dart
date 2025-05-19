import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FitSwimApp extends StatelessWidget {
  FitSwimApp({super.key});

  List<Widget> listOfTile = [
    ListTile(
      title: Text("Aluno A"),
      subtitle: Text("Touca Azul"),
      leading: Icon(Icons.person),
    ),
    ListTile(
      title: Text("Aluno B"),
      subtitle: Text("Touca Preta"),
      leading: Icon(Icons.person),
    ),
    ListTile(
      title: Text("Aluno C"),
      subtitle: Text("Touca Roxa"),
      leading: Icon(Icons.person),
    ),
    ListTile(
      title: Text("Aluno D"),
      subtitle: Text("Touca Vermelha"),
      leading: Icon(Icons.person),
    ),
    ListTile(
      title: Text("Aluno E"),
      subtitle: Text("Touca Laranja"),
      leading: Icon(Icons.person),
    ),
    ListTile(
      title: Text("Aluno F"),
      subtitle: Text("Touca Verde"),
      leading: Icon(Icons.person),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fit Swim"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 500,
                child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    children: listOfTile))
          ],
        ),
      ),
    );
  }
}
