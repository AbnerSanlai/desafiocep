import 'package:desafio/app/modules/pesquisa/pesquisa_store.dart';
import 'package:desafio/app/services/models/cep_model.dart';
import 'package:desafio/app/services/models/cep_model_erro.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CepRepository {
  Future buscarCep(String cep) async {
    PesquisaStore pesquisaStore = Modular.get();
    Map<String, String> headers = {"Content-Type": "application/json"};

    var response = await http.get(
        Uri.parse("https://brasilapi.com.br/api/cep/v2/$cep"),
        headers: headers);

    if (response.statusCode == 404) {
      var responseCep = json.decode(response.body);
      pesquisaStore.cepModelErro = CepModelErro.fromJson(responseCep);
      pesquisaStore.cepModel?.cep = "erro";
    } else {
      var responseCep = json.decode(response.body);
      pesquisaStore.cepModel = CepModel.fromJson(responseCep);
      print(response.statusCode);
    }
  }
}
