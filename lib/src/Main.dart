import 'package:NinoBot/src/commands/Ping.dart';
import 'package:nyxx/Vm.dart' as nyxxVm;
import 'package:nyxx/commands.dart';
import 'package:nyxx/nyxx.dart';

class Main {
  final bot = Nyxx("You-Token");
  static Main singleton;

  void setup() {
    bot.onReady.listen((ReadyEvent e) {
      print("Ready!");
    });
    var cf = CommandsFramework(bot, prefix: "/");
    cf.discoverCommands();
  }
}

void main() {
  nyxxVm.configureNyxxForVM();
  Main.singleton = Main();
  Main.singleton.setup();
}
