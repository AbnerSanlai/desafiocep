import 'package:mobx/mobx.dart';

part 'pagesucesso_store.g.dart';

class PagesucessoStore = _PagesucessoStoreBase with _$PagesucessoStore;
abstract class _PagesucessoStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}