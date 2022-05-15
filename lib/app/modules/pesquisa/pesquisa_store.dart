import 'package:desafio/app/services/models/cep_model.dart';
import 'package:desafio/app/services/repository/cep_repository.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'pesquisa_store.g.dart';

class PesquisaStore = _PesquisaStoreBase with _$PesquisaStore;

abstract class _PesquisaStoreBase with Store {
  @observable
  TextEditingController cepController = TextEditingController();

  @observable
  bool animated = false;

  @observable
  late ObservableFuture<CepModel?> cepModel;

  @action
  Future buscarCepRepository() => cepModel =
      ObservableFuture(CepRepository().buscarCep(cepController.text));

  @action
  Future pesquisaCep() async {
    animated = true;

    await buscarCepRepository();

    if (cepModel.status == FutureStatus.fulfilled) {
      print(cepModel.value?.location.coordinates.latitude);
    }
    animated = false;
  }

  @action
  erroPage() {}
}
