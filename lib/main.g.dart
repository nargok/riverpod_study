// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$greetHash() => r'ec813951019dacb34f65d1d7d1b375148fffaa6c';

/// See also [greet].
@ProviderFor(greet)
final greetProvider = AutoDisposeProvider<String>.internal(
  greet,
  name: r'greetProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$greetHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GreetRef = AutoDisposeProviderRef<String>;
String _$asyncGreetHash() => r'84398c1151bf5dfe6a1440dab203aeb6f17fb4e8';

/// See also [asyncGreet].
@ProviderFor(asyncGreet)
final asyncGreetProvider = AutoDisposeFutureProvider<String>.internal(
  asyncGreet,
  name: r'asyncGreetProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$asyncGreetHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AsyncGreetRef = AutoDisposeFutureProviderRef<String>;
String _$counterNotifierHash() => r'afde4a95c71728ed6b2f58b986d3b8a37532c226';

/// See also [CounterNotifier].
@ProviderFor(CounterNotifier)
final counterNotifierProvider =
    AutoDisposeAsyncNotifierProvider<CounterNotifier, int>.internal(
  CounterNotifier.new,
  name: r'counterNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CounterNotifier = AutoDisposeAsyncNotifier<int>;
String _$greetNotifierHash() => r'6eacb8e4101ff6e3787a57ee3502d1993d2c5458';

/// See also [GreetNotifier].
@ProviderFor(GreetNotifier)
final greetNotifierProvider =
    AutoDisposeAsyncNotifierProvider<GreetNotifier, String>.internal(
  GreetNotifier.new,
  name: r'greetNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$greetNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GreetNotifier = AutoDisposeAsyncNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
