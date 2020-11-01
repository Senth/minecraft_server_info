import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minecraft_server_info/config/constants.dart';

const _defaultStyle = TextStyles.text;

const _defaultHeaderStyle = const TextStyle(
  fontFamily: Fonts.header,
  color: AppColors.header,
  height: 1.0,
);

// ------------------
//    Headers
// -----------------
class H1 extends _Text {
  H1(final String text)
      : super(
          text,
          margin: EdgeInsets.only(top: FontSizes.h1, bottom: FontSizes.text),
        );

  TextStyle get style => _defaultHeaderStyle.copyWith(
        fontSize: FontSizes.h1,
      );
}

class H2 extends _Text {
  H2(final String text)
      : super(
          text,
          margin: EdgeInsets.only(top: FontSizes.h2, bottom: FontSizes.text),
        );

  TextStyle get style => _defaultHeaderStyle.copyWith(
        fontSize: FontSizes.h2,
      );
}

// ------------------
//    Text
// -----------------
class Paragraph extends _Text {
  Paragraph(final String text) : super(text);

  @override
  TextStyle get style => _defaultStyle;
}

abstract class _Text extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry margin;

  _Text(
    this.text, {
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.margin,
      child: SelectableText(
        text,
        style: this.style,
      ),
    );
  }

  TextStyle get style;
}
