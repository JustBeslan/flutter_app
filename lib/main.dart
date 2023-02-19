import 'package:flutter/material.dart';

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
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrangeAccent
                        ),
                        child: const Text('Add'),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.white),
                      label: const Text('Add'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrangeAccent
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        child: const Text('Add')),
                    OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.deepOrangeAccent),
                        label: const Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.deepOrangeAccent
                          ),
                        )
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.deepOrangeAccent),
                        label:  const Text(
                            'Add',
                            style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                fontSize: 25
                            )
                        )
                    ),
                    TextButton(
                        onPressed: () {},
                        child:  const Text(
                            'Add',
                            style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                fontSize: 25
                            )
                        )
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      "https://avatars.githubusercontent.com/u/48148617?v=4",
                      width: 50,
                      height: 50,
                    ),
                    const Image(
                      image: NetworkImage('https://avatars.githubusercontent.com/u/48148617?v=4'),
                      width: 50,
                      height: 50,
                    ),
                    Image.asset(
                      'assets/in_yan.png',
                      width: 50,
                      height: 50,
                    ),
                    const Image(
                      image: AssetImage('assets/in_yan.png'),
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ]
          )
        ),
        floatingActionButton: SizedBox(
          width: 100,
          height: 100,
          child: FloatingActionButton(
            backgroundColor: Colors.deepOrangeAccent,
            onPressed: () {
              print('Clicked');
            },
            child: const Text('Нажми'),
          ),
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