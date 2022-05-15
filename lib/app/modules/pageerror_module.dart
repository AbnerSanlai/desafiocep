import 'package:desafio/app/modules/pageerror/pageerror_page.dart';
import 'package:desafio/app/modules/pageerror/pageerror_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PageerrorModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PageerrorStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const PageerrorPage()),
  ];
}
