import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hadiya/features/home/presentation/home_view.dart';
import 'package:hadiya/generated/l10n.dart';

class HadiyaApp extends StatelessWidget {
  const HadiyaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
      title: 'Hadiya App',
      home: const HomeView(),
    ); }}
