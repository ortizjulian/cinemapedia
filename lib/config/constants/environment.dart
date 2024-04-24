import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String movideDbKey = dotenv.env['MOVIEDB_KEY'] ?? 'No hay';
}
