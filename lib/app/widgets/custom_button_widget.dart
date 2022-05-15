// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool animation;
  const CustomButtonWidget(
      {Key? key, this.title = "", required this.onTap, required this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        borderRadius: BorderRadius.all(const Radius.circular(10.0)),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          width: animation ? 50 : 400,
          height: animation ? 50 : 70,
          alignment: FractionalOffset.center,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.8),
            borderRadius:
                BorderRadius.all(Radius.circular(animation ? 25 : 10.0)),
          ),
          child: animation
              ? CircularProgressIndicator(
                  color: Colors.white,
                )
              : Text(title,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3,
                  )),
        ),
        onTap: onTap,
      ),
    );
  }
}
