import 'package:mobx/mobx.dart';

part 'pageerror_store.g.dart';

class PageerrorStore = _PageerrorStoreBase with _$PageerrorStore;
abstract class _PageerrorStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}