import 'package:flutter/material.dart';

class AppBarstyled extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  @override
  final Size preferredSize;

  const AppBarstyled({Key key, this.title, this.preferredSize})
      : super(key: key);

  @override
  _AppBarstyledState createState() => _AppBarstyledState();
}

class _AppBarstyledState extends State<AppBarstyled> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[Text(widget.title)],
    );
  }
}
