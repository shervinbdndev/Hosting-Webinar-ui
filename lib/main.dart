import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hostingwebinarui/views/main_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    runApp(const MyApp());
  } else {
    exit(0);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hosting Webinar UI',
      debugShowCheckedModeBanner: !true,
      initialRoute: '/',
      routes: {
        '/': (context) => const HostingWebinarUI(),
      },
    );
  }
}
