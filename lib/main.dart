import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat)),
              Tab(icon: Icon(Icons.circle_outlined)),
              Tab(icon: Icon(Icons.call)),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            // CHAT
            Column(
              children: [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Jessie"),
                    subtitle: Text("Hi"),
                    trailing: Text("50", style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Jessie"),
                    subtitle: Text("Halo"),
                    trailing: Text("49", style: TextStyle(color: Colors.green)),
                  ),
                ),
              ],
            ),

            // STATUS
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("My Status"),
              subtitle: Text("Tap to add status update"),
            ),

            // CALL
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Jessa"),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_received, size: 16, color: Colors.green),
                      Text("  Today, 10:30"),
                    ],
                  ),
                  trailing: Icon(Icons.call),
                ),

                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Jessie"),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_made, size: 16, color: Colors.red),
                      Text("  Yesterday, 19:45"),
                    ],
                  ),
                  trailing: Icon(Icons.videocam),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
