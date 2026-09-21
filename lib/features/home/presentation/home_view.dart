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
        title: Row(children: [const Icon(Icons.forward), Text(title)]),
        centerTitle: false,
      ),
      body: Text(
        //just a text
        // ignore: lines_longer_than_80_chars
        '${Localizations.localeOf(context).languageCode} + ${Directionality.of(context).name} + ${S.of(context).bodyTestText}',
      ),
    );
  }
}
