import 'package:desafio/app/services/models/cep_model.dart';
import 'package:desafio/app/services/models/cep_model_erro.dart';
import 'package:desafio/app/services/repository/cep_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'pesquisa_store.g.dart';

class PesquisaStore = _PesquisaStoreBase with _$PesquisaStore;

abstract class _PesquisaStoreBase with Store {
  @observable
  TextEditingController cepController = TextEditingController();

  @observable
  bool animated = false;

  @observable
  CepModel cepModel = CepModel();

  @observable
  bool cepValido = false;

  @action
  Future pesquisaCep() async {
    animated = true;
    await CepRepository().buscarCep(cepController.text);
    if (cepValido) {
      cepController.clear();
      Modular.to.pushNamed('/sucesso/', arguments: cepModel);
    } else {
      Modular.to.pushReplacementNamed(
        '/erro/${cepController.text}',
      );
    }
    animated = false;
  }
}
