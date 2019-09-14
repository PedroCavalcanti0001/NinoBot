import 'package:NinoBot/NinoBot.dart';
import 'package:nyxx/commands.dart';
import 'package:nyxx/nyxx.dart';

@Command("anunciar")
Future<void> announce(CommandContext context) async {
  var msg = context.message.content;
  var args = msg.replaceRange(0, 10, "").split("&");
  if(args.length < 2){
      await context.reply(content: "Utilize: /anunciar <titulo> <anuncio>");
  }else {
    var title = args[0];
    var announce = args[1];
    var embed = EmbedBuilder()
      ..title = title
      ..description = announce
      ..color = DiscordColor.fromInt(13369286)
      ..addFooter((footer) {
        footer.iconUrl = "https://cdn.discordapp.com/embed/avatars/0.png";
        footer.text = "NinoBot • ${Main.singleton.timeFormatted()}";
      });
    await context.reply(embed: embed);
  }
}