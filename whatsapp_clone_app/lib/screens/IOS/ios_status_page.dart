import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IOSStatusPage extends StatefulWidget {
  const IOSStatusPage({Key? key}) : super(key: key);

  @override
  State<IOSStatusPage> createState() => _IOSStatusPageState();
}

class _IOSStatusPageState extends State<IOSStatusPage> {
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
                  CupertinoButton(
                      child: const Text("Privacy"), onPressed: () {}),
                  const Spacer(),
                  const Text(
                    "Status",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(width: 22),
                  CupertinoButton(
                      child: const Icon(CupertinoIcons.add_circled),
                      onPressed: () {}),
                ],
              ),
            ),
            const SizedBox(height: 45),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blueAccent),
                      ),
                      child:
                          const FlutterLogo(style: FlutterLogoStyle.horizontal),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "My Status",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Add to my status",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    CupertinoIcons.camera,
                  ),
                  const SizedBox(width: 20),
                  const Icon(
                    CupertinoIcons.eyedropper_full,
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              height: 20,
              width: double.infinity,
              child: Text(
                "RECENT UPDATES",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  letterSpacing: 1,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ...List.generate(15, (index) => index)
                .map(
                  (e) => Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.blueAccent),
                                ),
                                child: const FlutterLogo(
                                    style: FlutterLogoStyle.horizontal),
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
                                  "9:25 am",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
