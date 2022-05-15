import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'pageerror_store.g.dart';

class PageerrorStore = _PageerrorStoreBase with _$PageerrorStore;

abstract class _PageerrorStoreBase with Store {
  @action
  voltarPagePesquisa() {
    Modular.to.pushReplacementNamed('/');
  }
}
