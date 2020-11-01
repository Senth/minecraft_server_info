import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../config/constants.dart';

const _defaultStyle = TextStyles.text;

class MenuButton extends StatefulWidget {
  final Routes route;

  MenuButton(this.route, {Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  Color textColor = AppColors.buttonMenu;

  _MenuButtonState();

  @override
  Widget build(BuildContext context) {
    return _TextButton(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      onPressed: () => Navigator.of(context).pushNamed(widget.route.uri),
      onEnter: _onEnter,
      onExit: _onExit,
      text: widget.route.name.toUpperCase(),
      style: TextStyle(
        color: this.textColor,
        fontSize: FontSizes.menu,
      ),
    );
  }

  void _onEnter(PointerEvent event) {
    setState(() {
      textColor = AppColors.buttonMenuHover;
    });
  }

  void _onExit(PointerEvent event) {
    setState(() {
      textColor = AppColors.buttonMenu;
    });
  }
}

class ParagraphButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  ParagraphButton({
    @required this.text,
    @required this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  _ParagraphButtonState createState() => _ParagraphButtonState();
}

class _ParagraphButtonState extends State<ParagraphButton> {
  Color textColor = AppColors.textButton;

  @override
  Widget build(BuildContext context) {
    return _TextButton(
      text: widget.text,
      style: _defaultStyle.copyWith(
        color: textColor,
      ),
      onPressed: widget.onPressed,
      onEnter: _onEnter,
      onExit: _onExit,
    );
  }

  void _onEnter(PointerEvent event) {
    setState(() {
      textColor = AppColors.textButtonHover;
    });
  }

  void _onExit(PointerEvent event) {
    setState(() {
      textColor = AppColors.textButton;
    });
  }
}

class _TextButton extends StatelessWidget {
  final String text;
  final TextStyle style;
  final VoidCallback onPressed;
  final Function(PointerEvent) onEnter;
  final Function(PointerEvent) onExit;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  _TextButton({
    Key key,
    @required this.text,
    @required this.style,
    this.padding,
    this.margin,
    @required this.onPressed,
    this.onEnter,
    this.onExit,
  }) : super(key: key);

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
