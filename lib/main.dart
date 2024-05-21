import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

@riverpod
String greet(GreetRef ref) {
  return 'Hello World!';
}

@riverpod
class CounterNotifier extends _$CounterNotifier {
  // 同期処理
  // @override
  // int build() => 0;
  //
  // void increment() {
  //   state = state + 1;
  // }

  // 非同期処理
  @override
  Future<int> build() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return 0;
  }

  void increment() async {
    final currentValue = state.valueOrNull;
    if (currentValue == null) {
      // loading or error
      return;
    }

    state = const AsyncLoading();
    await Future<void>.delayed(const Duration(seconds: 1));
    state = AsyncValue.data(currentValue + 1);
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Riverpod study'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              counter.when(
                  data: (counter) => '$counter',
                  error: (e, st) => e.toString(),
                  loading: () => 'loading'),
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterNotifierProvider.notifier).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

@riverpod
Future<String> asyncGreet(AsyncGreetRef ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Hello world';
}

@riverpod
class GreetNotifier extends _$GreetNotifier {
  @override
  Future<String> build() async {
    await Future.delayed(const Duration(seconds: 1));
    return 'Hello';
  }
}

class GreetingPage extends ConsumerWidget {
  const GreetingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<String> greet = ref.watch(asyncGreetProvider);
    return Center(
      child: greet.when(
          loading: () => const Text("Loading"),
          data: (greet) => Text(greet),
          error: (e, st) => Text(e.toString())),
    );
  }
}
