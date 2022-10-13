import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/Global/global.dart';

class IOSSettingsPage extends StatefulWidget {
  const IOSSettingsPage({Key? key}) : super(key: key);

  @override
  State<IOSSettingsPage> createState() => _IOSSettingsPageState();
}

class _IOSSettingsPageState extends State<IOSSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 54,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: CupertinoColors.lightBackgroundGray,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.blueAccent),
                        ),
                        child: const Icon(Icons.whatsapp),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Harshit",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.qr_code_scanner,
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.message,
                        color: Colors.amber,
                      ),
                    ),
                    Text("Starred Message"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        CupertinoIcons.device_laptop,
                        color: Colors.teal,
                      ),
                    ),
                    Text("Linked Devices"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.apple,
                        color: Colors.green,
                      ),
                    ),
                    const Text("IOS"),
                    const Spacer(),
                    CupertinoSwitch(
                        value: Global.isIOS,
                        onChanged: (val) {

                          Global.homePageKey.currentState!.setState(() {

                            Global.isIOS = !Global.isIOS;
                          });

                        }),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.key,
                        color: Colors.blue,
                      ),
                    ),
                    Text("Account"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.whatsapp,
                        color: Colors.green,
                      ),
                    ),
                    Text("Chats"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.red,
                      ),
                    ),
                    Text("Notifications"),
                    Spacer(),
                    Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.currency_rupee,
                        color: Colors.teal,
                      ),
                    ),
                    Text("Payments"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.data_exploration_rounded,
                        color: Colors.green,
                      ),
                    ),
                    Text("Storage and Data"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.help,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Text("Help"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                      ),
                    ),
                    Text("Tell a Friend"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(height: 45),
            ],
          ),
        ));
  }
}
