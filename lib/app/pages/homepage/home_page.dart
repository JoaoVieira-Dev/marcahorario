import 'package:flutter/material.dart';
import 'package:marcahorario/app/widgets/appbar/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarstyled(
        title: "Tela Inicial",
      ),
      // appBar: AppBarstyled(
      //   title: "Home",
      // ),
      body: Center(
        child: Text("Inicio"),
      ),
    );
  }
}
