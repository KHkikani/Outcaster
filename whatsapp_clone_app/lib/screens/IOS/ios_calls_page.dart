import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IOSCallsPage extends StatefulWidget {
  const IOSCallsPage({Key? key}) : super(key: key);

  @override
  State<IOSCallsPage> createState() => _IOSCallsPageState();
}

class _IOSCallsPageState extends State<IOSCallsPage> {
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
                    "Calls",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(width: 22),
                  CupertinoButton(
                      child: const Icon(CupertinoIcons.phone_fill_badge_plus),
                      onPressed: () {}),
                ],
              ),
            ),
            // const SizedBox(height: 50),
            ...List.generate(15, (index) => index).map(
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
                                Row(
                                  children: [
                                    const Icon(
                                        CupertinoIcons.phone_arrow_up_right),
                                    const SizedBox(width: 5),
                                    Text("Outgoing"
                                      ,style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text("9:30 pm"),
                            const SizedBox(width: 20),
                            const Icon(CupertinoIcons.exclamationmark_circle),
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
