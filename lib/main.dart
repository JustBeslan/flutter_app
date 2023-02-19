import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _buildDarkTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('itProgerApp'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('itProger App',
            style: TextStyle(
              fontSize: 40,
              color: Colors.red,
              fontFamily: "Babylonica",
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepOrangeAccent,
          onPressed: () => Fluttertoast.showToast(
              msg: 'Clicked',
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 14.0
          ),
          child: const Text('Нажми'),
        ),
      ),
    );
  }
}

ThemeData _buildDarkTheme() {
  const primaryColor = Color(0xFF151026);
  final baseTheme = ThemeData(fontFamily: "SunFlower");
  return baseTheme.copyWith(
    appBarTheme: const AppBarTheme(
      color: Colors.deepOrangeAccent
    ),
    brightness: Brightness.dark,
    primaryColor: primaryColor,
  );
}