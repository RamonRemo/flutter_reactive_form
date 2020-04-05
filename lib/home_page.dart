import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:testando_mobx_3/body.dart';

import 'controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<Controller>();

    return Scaffold(
        appBar: AppBar(
          title: Observer(builder: (_) {
            return Text(controller.isValid
                ? "Formulario Validado"
                : "Formmulario nao validado");
          }),
        ),
        body: BodyWidget());
  }
}
