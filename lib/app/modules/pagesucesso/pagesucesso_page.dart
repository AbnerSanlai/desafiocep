import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafio/app/modules/pagesucesso/pagesucesso_store.dart';
import 'package:flutter/material.dart';

class PagesucessoPage extends StatefulWidget {
  final String title;
  const PagesucessoPage({Key? key, this.title = 'PagesucessoPage'})
      : super(key: key);
  @override
  PagesucessoPageState createState() => PagesucessoPageState();
}

class PagesucessoPageState extends State<PagesucessoPage> {
  final PagesucessoStore store = Modular.get();

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
