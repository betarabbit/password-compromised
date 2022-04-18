import 'dart:developer';

import 'package:password_compromised/password_compromised.dart';

main() async {
  final isCompromised = await isPasswordCompromised('test');
  log('Password "test" is compromised? $isCompromised');
}
