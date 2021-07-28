import 'dart:html';

import 'package:flutter/material.dart';
import 'package:u_win/utils/standards/standard_text_styles_model.dart';
import 'package:u_win/widgets/standard_padding.dart';

import '../size_measurement_utils.dart';
import '../standards/style_standards.dart';

class StandardButton extends StatelessWidget {
//culoarea butonului atunci cand este inactiv: light grey (standarde de culoare)?
//Fiecare element trebuie verificat cu functia checkWidgetParameter(Functie verificare parametru  #13), iar intre elemente trebuie sa existe o spatiere standard. De asemenea, se vor lua in considerare toti parametrii primiti.?
//-stilul textului: headline.semibold (standarde de text)
//imagine: dimensiune?
  final Function onTap;
  final String name;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final Color? iconColor;
  final double? iconSize;
  final Color? buttonColor;
  final String? image;
  final Color? textColor;
  final Color? disabledTextColor;

  StandardButton(
      this.onTap,
      this.name,
      this.leadingIcon,
      this.trailingIcon,
      this.iconColor,
      this.iconSize,
      this.buttonColor,
      this.image,
      this.textColor,
      this.disabledTextColor);

  @override
  Widget build(BuildContext context) {
    var _textStyle = StandardTextStyles.headline.semibold
        .copyWith(color: textColor ?? StandardColors.standardWhite);
    var _textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: calculateHeight(_textScaleFactor, name, _textStyle),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: StandardColors.standardBlack,
        ),
        child: Row(
          children: [
            if (leadingIcon != null)
              StandardPadding(
                child: Icon(leadingIcon),
                top: 0,
                bottom: 0,
                left: 0,
              )
          ],
        ),
      ),
    );
  }

  double calculateHeight(double textScaleFactor, String text, TextStyle style) {
    return StandardSpacing.verticalSpacing * 2 +
        getTextHeight(text, style, textScaleFactor);
  }
}
