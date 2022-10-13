import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IOSChatsPage extends StatefulWidget {
  const IOSChatsPage({Key? key}) : super(key: key);

  @override
  State<IOSChatsPage> createState() => _IOSChatsPageState();
}

class _IOSChatsPageState extends State<IOSChatsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.lightBackgroundGray,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 54,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: CupertinoColors.extraLightBackgroundGray,
                border: Border(
                  bottom: BorderSide(
                    color: CupertinoColors.inactiveGray,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CupertinoButton(child: const Text("Edit"), onPressed: () {}),
                  const Spacer(),
                  const Text(
                    "Chats",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(width: 22),
                  CupertinoButton(
                      child: const Icon(CupertinoIcons.pen), onPressed: () {}),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text("Broadcast List"),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text("New Group"),
                  ),
                ],
              ),
            ),
            ...List.generate(15, (index) => index)
                .map(
                  (e) => Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(6),
                              child: CircleAvatar(
                                radius: 25,
                                child: FlutterLogo(),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Flutter",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Hi",
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              "10:30 m",
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
