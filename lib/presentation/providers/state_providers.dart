import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_providers.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() => 5;

  void increaseByOne() {
    state++;
  }
}

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() {
    return false;
  }

  void toggleDarkMode() {
    state = !state;
  }
}

@Riverpod(keepAlive: true)
class UserName extends _$UserName {
  @override
  String build() {
    return 'Ignacio Montaldi';
  }

  void changeName(String name) {
    state = name;
  }
}

// String Username
// Default: 'Ignacio Montaldi'
// changeName (String name)
//usernameProvider.notifier.changeName(RandomGenerator.getRandomName())
