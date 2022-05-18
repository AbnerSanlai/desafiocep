import 'package:desafio/app/services/models/cep_model.dart';
import 'package:desafio/app/widgets/text_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafio/app/modules/pagesucesso/pagesucesso_store.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class PagesucessoPage extends StatefulWidget {
  final String title;
  final CepModel cepModel;
  const PagesucessoPage(
      {Key? key, this.title = 'PagesucessoPage', required this.cepModel})
      : super(key: key);
  @override
  PagesucessoPageState createState() => PagesucessoPageState();
}

class PagesucessoPageState extends State<PagesucessoPage> {
  @override
  Widget build(BuildContext context) {
    double sizewidth = MediaQuery.of(context).size.width;
    double sizeheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("CEP ${widget.cepModel.cep}"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: <Widget>[
            Container(
              height: sizeheight * 0.23,
              width: sizewidth * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(24)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(text: "${widget.cepModel.street}"),
                  TextWidget(text: "Bairro: ${widget.cepModel.neighborhood}"),
                  TextWidget(text: "Cidade: ${widget.cepModel.city}"),
                  TextWidget(text: "Estado: ${widget.cepModel.state}"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: sizeheight * 0.55,
              width: sizewidth * 0.9,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
              ),
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                    double.parse(
                        widget.cepModel.location.coordinates.latitude!),
                    double.parse(
                        widget.cepModel.location.coordinates.longitude!),
                  ),
                  zoom: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
