import 'package:flutter/widgets.dart';
import 'package:minecraft_server_info/widgets/text_widgets.dart';

import 'screen.dart';

class ModsScreen extends Screen {
  @override
  Widget get child => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H1("Mods"),
          Paragraph("Which mods are activated"),
        ],
      );
}
