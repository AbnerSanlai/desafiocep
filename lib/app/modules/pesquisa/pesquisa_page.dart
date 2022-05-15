import 'package:desafio/app/widgets/custom_button_widget.dart';
import 'package:desafio/app/widgets/formfield_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafio/app/modules/pesquisa/pesquisa_store.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PesquisaPage extends StatefulWidget {
  final String title;
  const PesquisaPage({Key? key, this.title = 'PesquisaPage'}) : super(key: key);
  @override
  PesquisaPageState createState() => PesquisaPageState();
}

class PesquisaPageState extends State<PesquisaPage> {
  final PesquisaStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    PesquisaStore pesquisaStore = Modular.get();
    double sizewidth = MediaQuery.of(context).size.width;
    double sizeheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          title: Text("Pesquisa de CEP",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.3,
              )),
          centerTitle: true),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FormfieldWidget(controller: pesquisaStore.cepController),
              Observer(builder: (_) {
                return CustomButtonWidget(
                  animation: pesquisaStore.animated,
                  title: "Pesquisar",
                  onTap: () {
                    if (pesquisaStore.cepController.text.length == 9) {
                      pesquisaStore.pesquisaCep();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "CEP Inválido",
                            style: GoogleFonts.roboto(
                              fontSize: 25,
                              color: Colors.blue.withOpacity(0.8),
                            ),
                          ),
                          duration: const Duration(milliseconds: 5000),
                        ),
                      );
                    }
                  },
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
