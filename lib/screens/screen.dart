import 'package:flutter/widgets.dart';
import '../widgets/app_bar.dart';
import '../config/constants.dart';

abstract class Screen extends StatelessWidget {
  final EdgeInsetsGeometry margin;

  Screen({
    this.margin = const EdgeInsets.only(left: 30, right: 30, bottom: 30),
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: AppColors.background,
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            Container(
              margin: this.margin,
              child: this.child,
            ),
          ],
        ),
      ),
    );
  }

  Widget get child;
}
