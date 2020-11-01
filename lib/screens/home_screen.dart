// import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:flutter/widgets.dart';
import 'package:minecraft_server_info/widgets/button_widgets.dart';
import 'package:minecraft_server_info/widgets/text_widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import '../screens/screen.dart';
import '../config/constants.dart';

class HomeScreen extends Screen {
  @override
  Widget get child => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H1("Server Info"),
          Paragraph(
              "Blushine is a vanilla++ server for casuals, builders and redstoners. " +
                  "The server uses the same seed as Hermitcraft 7."),
          H2("Server IP"),
          Paragraph("IP: senth.org\nUse the default port number"),
          H2("Quality of Life Mods"),
          Paragraph("A few QoL mods and datapacks have been enabled to " +
              "make the server a bit less grindy to play. You are also free to use any client-side " +
              "mods that you want. Check out the 'mods' tab for more information." +
              "\n\nWe also have a live map where you can see the entire map " +
              "including online players."),
          H2("World Snapshot"),
          Paragraph(
              "Every hour, a snapshot is taken of the world. Feel free to download this world " +
                  "to design or try things out in creative before you build them on the server."),
          ParagraphButton(
            text: "Download Snapshot",
            onPressed: () async {
              const url = Urls.worldSnapshot;
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
        ],
      );
}
