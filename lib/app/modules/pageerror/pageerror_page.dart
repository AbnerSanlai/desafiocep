import 'package:desafio/app/services/models/cep_model_erro.dart';
import 'package:desafio/app/widgets/custom_button_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafio/app/modules/pageerror/pageerror_store.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageerrorPage extends StatefulWidget {
  final String cep;
  const PageerrorPage({Key? key, required this.cep}) : super(key: key);
  @override
  PageerrorPageState createState() => PageerrorPageState();
}

class PageerrorPageState extends State<PageerrorPage> {
  @override
  Widget build(BuildContext context) {
    final PageerrorStore pageErrorStore = Modular.get();
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_sharp,
              color: Colors.red,
              size: 200,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
              child: Column(
                children: [
                  Text(
                    "O CEP ${widget.cep} não foi encontrado. Verifique o CEP informado e tente novamente",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomButtonWidget(
                    onTap: pageErrorStore.voltarPagePesquisa,
                    animation: false,
                    title: 'Tentar Novamente',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
