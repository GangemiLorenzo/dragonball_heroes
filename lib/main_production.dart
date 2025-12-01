import 'package:dragonball_heroes/app/app.dart';
import 'package:dragonball_heroes/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
