import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class TextButton extends StatelessWidget {
  final String text;
  final TextStyle style;
  final VoidCallback onPressed;
  final Function(PointerEvent) onEnter;
  final Function(PointerEvent) onExit;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  TextButton({
    @required this.text,
    @required this.style,
    this.padding,
    this.margin,
    @required this.onPressed,
    this.onEnter,
    this.onExit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.margin,
      child: MouseRegion(
        onEnter: this.onEnter,
        onExit: this.onExit,
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: this.onPressed,
          child: Container(
            padding: this.padding,
            child: Text(
              this.text,
              style: this.style,
            ),
          ),
        ),
      ),
    );
  }
}
