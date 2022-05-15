import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FormfieldWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const FormfieldWidget(
      {Key? key, this.title = "FormfieldWidget", required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [MaskTextInputFormatter(mask: "#####-###")],
      style: GoogleFonts.roboto(fontSize: 20),
      keyboardType: TextInputType.number,
      controller: controller,
      decoration: InputDecoration(
        label: const Text("CEP"),
        alignLabelWithHint: true,
        labelStyle: GoogleFonts.roboto(
          fontSize: 25,
          color: Colors.blue.withOpacity(0.8),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: "Informe o CEP para pesquisa",
        hintStyle: GoogleFonts.roboto(fontSize: 22),
      ),
    );
  }
}
