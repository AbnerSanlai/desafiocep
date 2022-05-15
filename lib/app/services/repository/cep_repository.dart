import 'package:desafio/app/services/models/cep_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CepRepository {
  Future<CepModel> buscarCep(String cep) async {
    Map<String, String> headers = {"Content-Type": "application/json"};

    var response = await http.post(
        Uri.parse("https://brasilapi.com.br/api/cep/v2/$cep"),
        headers: headers);

    try {
      if (response.statusCode != 200) {
        var responseCep = json.decode(response.body);
        CepModel cepModel = CepModel.fromJson(responseCep);
        return cepModel;
      } else {
        var responseCep = json.decode(response.body);
        CepModel cepModel = CepModel.fromJson(responseCep);
        print(response.statusCode);
        print(cepModel.cep);
        return cepModel;
      }
    } catch (e, stackTrace) {
      throw Exception(stackTrace);
    }
  }
}
