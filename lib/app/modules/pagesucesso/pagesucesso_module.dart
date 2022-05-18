import 'package:desafio/app/modules/pagesucesso/pagesucesso_page.dart';
import 'package:desafio/app/modules/pagesucesso/pagesucesso_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PagesucessoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PagesucessoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => PagesucessoPage(cepModel: args.data),
        transition: TransitionType.leftToRight,
        duration: const Duration(seconds: 2)),
  ];
}
