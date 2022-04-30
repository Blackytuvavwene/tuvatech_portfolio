import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuvatech_portfolio/src/utilities/app_colors.dart';

// custom text widget to use in app
class Utext extends StatelessWidget {
  const Utext({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.overflow,
    this.textAlign,
    this.softWrap,
    this.wrapWords,
  }) : super(key: key);
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final Color? color;
  final bool? softWrap;
  final bool? wrapWords;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      wrapWords: wrapWords ?? true,
      softWrap: softWrap,
      minFontSize: 2,
      style: GoogleFonts.ubuntuMono(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color ?? AppColorsLight.onBackground,
      ),
      textAlign: textAlign ?? TextAlign.start,
      overflow: overflow ?? TextOverflow.ellipsis,
    );
  }
}
