import 'dart:developer';
import 'dart:io';

import 'package:password_compromised/password_compromised.dart';

main(List<String> arguments) async {
  try {
    if (arguments.length != 1) log('Please input password!');

    final password = arguments[0];
    final isCompromised = await isPasswordCompromised(password);

    log('Password is${isCompromised ? "" : "not"} compromised!');
    exit(isCompromised ? 1 : 0);
  } catch (err) {
    log(err.toString());
  }
}
