import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.red));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VedioApp(),
    );
  }
}

double ht = 0.0;
double wdt = 0.0;

class VedioApp extends StatefulWidget {
  const VedioApp({super.key});

  @override
  State<VedioApp> createState() => _VedioAppState();
}

class _VedioAppState extends State<VedioApp> {
  @override
  Widget build(BuildContext context) {
    ht = MediaQuery.of(context).size.height;
    wdt = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
          title: const Text(
            "Video stream",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: []),
    );
  }
}
