import 'package:NinoBot/NinoBot.dart';
import 'package:nyxx/commands.dart';

@Command("ping")
Future<void> ping(CommandContext context) async {
  await context.reply(content: "meu ping é ${Main.singleton.bot.uptime.inMilliseconds} ms");
}
