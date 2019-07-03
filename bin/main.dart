import 'dart:io';

import 'package:password_compromised/password_compromised.dart';

main(List<String> arguments) async {
  try {
    if (arguments.length != 1) print('Please input password!');

    final password = arguments[0];
    final isCompromised = await isPasswordCompromised(password);

    print('Password is${isCompromised ? "" : "not"} compromised!');
    exit(isCompromised ? 1 : 0);
  } catch (err) {
    print(err);
  }
}
