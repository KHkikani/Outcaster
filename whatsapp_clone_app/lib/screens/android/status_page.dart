import 'package:flutter/material.dart';


class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            backgroundColor: Colors.grey,
            child: const Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 6),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      const CircleAvatar(radius: 26),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff128c7e),
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Colors.white, width: 1.5),
                        ),
                        child: const Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  ),
                  title: const Text("My Status"),
                  subtitle: const Text("Tap to add status update"),
                ),
                const SizedBox(height: 6),
                Container(
                  margin: EdgeInsets.only(left: 14),
                  child: const Text(
                    "Recent updates",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: FlutterLogo(),
                    title: Text("Flutter"),
                    subtitle: Text("To Day"),
                  );
                },
                itemCount: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
