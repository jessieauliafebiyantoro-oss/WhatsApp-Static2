import 'package:flutter/material.dart';
import 'package:widget_lanjut/detail.chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
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
          title: Text('Whatsapp'),
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
            // ================= CHAT =================
            ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: InkWell(
                    onTap: () {
                      print("Chat ditekan");

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailChat()),
                      );
                    },
                    child: Card(
                      elevation: 30,
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("dava"),
                        subtitle: Text("iyaa beyy"),
                        trailing: Text(
                          '999+',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: InkWell(
                    onTap: () {
                      print("Chat ditekan");
                    },
                    child: Card(
                      elevation: 30,
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("rara"),
                        subtitle: Text("makasih ya"),
                        trailing: Text(
                          '67',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: InkWell(
                    onTap: () {
                      print("Chat ditekan");
                    },
                    child: Card(
                      elevation: 30,
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Qila"),
                        subtitle: Text("Beli jco yuu"),
                        trailing: Text(
                          '5',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: InkWell(
                    onTap: () {
                      print("Chat ditekan");
                    },
                    child: Card(
                      elevation: 30,
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Caca"),
                        subtitle: Text("main yu saa"),
                        trailing: Text(
                          '999+',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: InkWell(
                    onTap: () {
                      print("Chat ditekan");
                    },
                    child: Card(
                      elevation: 30,
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("saa"),
                        subtitle: Text("bagus bgt bunganya"),
                        trailing: Text(
                          '100',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: InkWell(
                    onTap: () {
                      print("Chat ditekan");
                    },
                    child: Card(
                      elevation: 30,
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("asmiz"),
                        subtitle: Text("caffe yuk"),
                        trailing: Text(
                          '18',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // ================= STATUS =================
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: ListView(
                children: [
                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Status saya"),
                      subtitle: Text("ketuk untuk menambahkan status"),
                      trailing: Icon(Icons.add_circle, color: Colors.green),
                    ),
                  ),

                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Labuanimek"),
                      subtitle: Text("Labujemaah"),
                    ),
                  ),

                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Caca"),
                      subtitle: Text("Makan makan bunn"),
                    ),
                  ),

                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Rara"),
                      subtitle: Text(
                        "Arisan bunda bunda kita ada di saung kecil sunda",
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ================= CALLS =================
            ListView(
              padding: EdgeInsets.only(left: 30, right: 30),
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.call),
                      title: Text('lele'),
                      subtitle: Text(
                        '15 minutes ago',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(5),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.call),
                      title: Text('dava'),
                      subtitle: Text('30 minutes ago'),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(5),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.call),
                      title: Text('ica'),
                      subtitle: Text('1 hour ago'),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(5),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.call),
                      title: Text('rara'),
                      subtitle: Text('2 hours ago'),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(5),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.call),
                      title: Text('Qila'),
                      subtitle: Text('3 hours ago'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
