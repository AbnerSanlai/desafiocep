import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafio/app/modules/pageerror/pageerror_store.dart';
import 'package:flutter/material.dart';

class PageerrorPage extends StatefulWidget {
  final String title;
  const PageerrorPage({Key? key, this.title = 'PageerrorPage'})
      : super(key: key);
  @override
  PageerrorPageState createState() => PageerrorPageState();
}

class PageerrorPageState extends State<PageerrorPage> {
  final PageerrorStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const <Widget>[],
      ),
    );
  }
}
