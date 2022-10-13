import 'package:flutter/material.dart';


class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, i) {
            return const ListTile(
              leading: FlutterLogo(),
              title: Text("Flutter"),
              subtitle: Text("Hi"),
              trailing: Text(
                "9:25 am",
                style: TextStyle(color: Colors.grey),
              ),
            );
          },
        ),
      ),
    );
  }
}
