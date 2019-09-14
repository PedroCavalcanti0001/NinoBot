import 'package:intl/intl.dart';
import 'package:nyxx/Vm.dart' as nyxxVm;
import 'package:nyxx/commands.dart';
import 'package:nyxx/nyxx.dart';

class Main {
  final bot = Nyxx("NDU1MTIzNjI2MTUzMjEzOTUz.XXxscA.mSpRUyp3RgDGMuEx5DF8KDKzLpE");
  static Main singleton;

  void setup() {
    bot.onReady.listen((ReadyEvent e) {
      print("Ready!");
    });
   CommandsFramework(bot, prefix: "/").discoverCommands();
  }

  String timeFormatted(){
    var now = DateTime.now();
    return DateFormat("dd/mm/yyyy").format(now);
  }
}

void main() {
  nyxxVm.configureNyxxForVM();
  Main.singleton = Main();
  Main.singleton.setup();
}
