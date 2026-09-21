import 'package:flutter/material.dart';
import 'package:hadiya/generated/l10n.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: S.of(context).appTitle);
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        centerTitle: false,
      ),
      body: const Text(
        'You have pushed the button this many times:',
      ),
    );
  }
}
