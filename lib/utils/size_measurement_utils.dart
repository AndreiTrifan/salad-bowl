import 'package:flutter/material.dart';

double getTextHeight(String text, TextStyle style, double textScaleFactor) {
  /*
    Input: Textul care va veni in widget-ul Text, stilul acestui text, si 
    factorul de scalare al acestuia.
    Output: Inaltimea widget-ului Text in care se va folosi

    Aceasta functie cere textul dintr-un widget Text, si style-ul pe care il 
    foloseste, si returneaza inaltimea acestuia, folosindu-se de TextPainter. 
    Se ia in considerare si o variabila de tip double pe nume textScaleFactor

    Aceasta functie poate fi si adaptata ca sa returneze si latimea textului, 
    trebuie doar specificat la functia de return (si sa se schimbe si 
    numele functiei).
  */
  final TextPainter textPainter = TextPainter(
      textScaleFactor: textScaleFactor,
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr)
    ..layout(minWidth: 0, maxWidth: double.infinity);
  return textPainter.size.height;
}
