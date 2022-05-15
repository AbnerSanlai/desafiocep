import 'package:desafio/app/modules/pageerror/pageerror_module.dart';
import 'package:desafio/app/modules/pagesucesso/pagesucesso_module.dart';
import 'package:desafio/app/modules/pesquisa/pesquisa_module.dart';
import 'package:desafio/app/modules/pesquisa/pesquisa_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PesquisaStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute("/", module: PesquisaModule()),
    ModuleRoute('/sucesso', module: PagesucessoModule()),
    ModuleRoute('/erro', module: PageerrorModule()),
  ];
}
