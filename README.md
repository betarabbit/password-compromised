# password-compromised
![License](https://img.shields.io/badge/license-MIT-blue.svg)![Build](https://travis-ci.org/betarabbit/password-compromised.svg?branch=master)

## Introduction
`password-compromised` is a dart package inspired by [password-leak](https://github.com/mathiscode/password-leak) that can be used to determine if a password is compromised by checking with the [Have I Been Pwned API](https://haveibeenpwned.com/API/).

## How is this safe?
Your passwords are **NEVER** transmitted to any other system. This library makes use of the [Have I Been Pwned API](https://haveibeenpwned.com/API/), which implements a [k-Anonymity Model](https://en.wikipedia.org/wiki/K-anonymity) so your password can be checked without ever having to give it to any other party.

## Usage
```dart
import 'package:password_compromised/password_compromised.dart';

main() async {
  final isCompromised = await isPasswordCompromised('test');
  print('Password "test" is compromised? ${isCompromised}');
}
```
