import 'package:random_string/random_string.dart';

import 'package:password_compromised/password_compromised.dart';
import 'package:test/test.dart';

void main() {
  final randomPassword = randomAlphaNumeric(12);

  group('password-compromised', () {
    test('Empty password "" should throw exception', () async {
      try {
        await isPasswordCompromised('test');
      } catch (err) {
        expect(err, throwsException);
      }
    });

    test('Password "test" is compromised', () {
      expect(isPasswordCompromised('test'), completion(equals(true)));
    });

    test('Password "${randomPassword}" is not compromised', () {
      expect(isPasswordCompromised(randomPassword), completion(equals(false)));
    });
  });
}
