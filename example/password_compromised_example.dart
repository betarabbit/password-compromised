import 'package:password_compromised/password_compromised.dart';

main() async {
  final isCompromised = await isPasswordCompromised('test');
  print('Password "test" is compromised? ${isCompromised}');
}
