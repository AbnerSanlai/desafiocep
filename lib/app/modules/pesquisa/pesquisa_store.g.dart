// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pesquisa_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PesquisaStore on _PesquisaStoreBase, Store {
  late final _$cepControllerAtom =
      Atom(name: '_PesquisaStoreBase.cepController', context: context);

  @override
  TextEditingController get cepController {
    _$cepControllerAtom.reportRead();
    return super.cepController;
  }

  @override
  set cepController(TextEditingController value) {
    _$cepControllerAtom.reportWrite(value, super.cepController, () {
      super.cepController = value;
    });
  }

  late final _$animatedAtom =
      Atom(name: '_PesquisaStoreBase.animated', context: context);

  @override
  bool get animated {
    _$animatedAtom.reportRead();
    return super.animated;
  }

  @override
  set animated(bool value) {
    _$animatedAtom.reportWrite(value, super.animated, () {
      super.animated = value;
    });
  }

  late final _$cepModelAtom =
      Atom(name: '_PesquisaStoreBase.cepModel', context: context);

  @override
  CepModel? get cepModel {
    _$cepModelAtom.reportRead();
    return super.cepModel;
  }

  @override
  set cepModel(CepModel? value) {
    _$cepModelAtom.reportWrite(value, super.cepModel, () {
      super.cepModel = value;
    });
  }

  late final _$cepModelErroAtom =
      Atom(name: '_PesquisaStoreBase.cepModelErro', context: context);

  @override
  CepModelErro? get cepModelErro {
    _$cepModelErroAtom.reportRead();
    return super.cepModelErro;
  }

  @override
  set cepModelErro(CepModelErro? value) {
    _$cepModelErroAtom.reportWrite(value, super.cepModelErro, () {
      super.cepModelErro = value;
    });
  }

  late final _$pesquisaCepAsyncAction =
      AsyncAction('_PesquisaStoreBase.pesquisaCep', context: context);

  @override
  Future<dynamic> pesquisaCep() {
    return _$pesquisaCepAsyncAction.run(() => super.pesquisaCep());
  }

  @override
  String toString() {
    return '''
cepController: ${cepController},
animated: ${animated},
cepModel: ${cepModel},
cepModelErro: ${cepModelErro}
    ''';
  }
}
