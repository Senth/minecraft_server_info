import 'package:flutter/widgets.dart';
import './text_button.dart';
import '../config/constants.dart';

class MenuButton extends StatefulWidget {
  final Routes route;

  MenuButton(this.route);

  @override
  State<StatefulWidget> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  Color textColor = AppColors.buttonMenu;

  _MenuButtonState();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      onPressed: () => Navigator.of(context).pushNamed(widget.route.uri),
      onEnter: _onEnter,
      onExit: _onExit,
      text: widget.route.name.toUpperCase(),
      style: TextStyle(
        color: this.textColor,
        inherit: true,
        fontSize: 24,
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
