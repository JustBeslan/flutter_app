import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: UserPanel(),
));

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text("itProger User"),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 30)),
                const Text(
                  "John Doe",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/in_yan.png'),
                  radius: 50,
                ),
                const Row(
                  children: [
                    Icon(Icons.mail_outline, size: 25),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      "admin@itproger.com",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "Count: $_count",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
