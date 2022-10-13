import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Global/global.dart';
import 'screens/IOS/ios_calls_page.dart';
import 'screens/IOS/ios_camera_page.dart';
import 'screens/IOS/ios_chats_page.dart';
import 'screens/IOS/ios_settings_page.dart';
import 'screens/IOS/ios_status_page.dart';
import 'screens/android/calls_page.dart';
import 'screens/android/chats_page.dart';
import 'screens/android/status_page.dart';


void main() {
  runApp(
     HomePage(),
  );
}

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: Global.homePageKey);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  late TabController tabController;
  int initialTabIndex = 0;

  List tabs = [
    const IOSStatusPage(),
    const IOSCallsPage(),
    const IOSCameraPage(),
    const IOSChatsPage(),
    const IOSSettingsPage(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return (Global.isIOS == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch().copyWith(
                primary: const Color(0xff128C7E),
                secondary: const Color(0xff128C7E),
              ),
            ),
            darkTheme: ThemeData(
              colorScheme: ColorScheme.fromSwatch().copyWith(
                primary: const Color(0xff075E54),
                secondary: const Color(0xff128C7E),
                background: Colors.black,
              ),
            ),
            home: DefaultTabController(
              length: 3,
              initialIndex: initialTabIndex,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text("WhatsApp"),
                  actions: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Global.isIOS = !Global.isIOS;
                        });
                      },
                      icon: (Global.isIOS == false)
                          ? const Icon(Icons.android)
                          : const Icon(Icons.apple),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    )
                  ],
                  bottom: TabBar(
                    onTap: (val) {
                      setState(() {
                        initialTabIndex = val;
                      });
                    },
                    controller: tabController,
                    indicatorColor: Colors.white,
                    tabs: const [
                      Tab(text: "CHATS"),
                      Tab(text: "STATUS"),
                      Tab(text: "CALLS"),
                    ],
                  ),
                  elevation: 0,
                ),
                body: Container(
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      ChatsPage(),
                      StatusPage(),
                      CallsPage(),
                    ],
                  ),
                ),
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: SafeArea(
              child: CupertinoTabScaffold(
                tabBar: CupertinoTabBar(
                  height: 60,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.circle), label: "Status"),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.phone), label: "Calls"),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.camera), label: "Camera"),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.chat_bubble_2_fill),
                        label: "Chats"),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.settings), label: "Settings"),
                  ],
                ),
                tabBuilder: (context, i) {
                  return CupertinoTabView(
                    builder: (BuildContext context) {
                      return tabs[i];
                    },
                  );
                  // return tabs[i];
                },
              ),
            ),
          );
  }
}
