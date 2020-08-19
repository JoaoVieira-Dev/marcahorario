import 'package:flutter/material.dart';

class AppBarstyled extends StatefulWidget implements PreferredSizeWidget {
  AppBarstyled({
    Key key,
    this.title,
  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  final String title;

  @override
  final Size preferredSize; // default is 56.0

  @override
  _AppBarstyledState createState() => _AppBarstyledState();
}

class _AppBarstyledState extends State<AppBarstyled> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      centerTitle: true,
    );
  }
}
