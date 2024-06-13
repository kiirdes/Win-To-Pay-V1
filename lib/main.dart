import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text(
            "Flutter App",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.right,
          ),
        ),
        drawer: const Drawer(
          backgroundColor: Colors.deepOrange,
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(
              children: [
                Text("hello world"),
                Text("i want \$\$\$"),
                Text("so let's learn flutter!"),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {print("hello")},
          child: const Icon(Icons.all_inclusive_rounded),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.space_dashboard_rounded),
            ),
            BottomNavigationBarItem(
              label: "Tasks",
              icon: Icon(Icons.check_box_rounded),
            ),
            BottomNavigationBarItem(
              label: "Shop",
              icon: Icon(Icons.store_rounded),
            ),
          ],
        ),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                height: 800,
                width: 200,
                decoration: BoxDecoration(border: Border.all()),
                child: Center(
                  child: Text(
                    "$index",
                  ),
                ),
              );
            }),
      ),
    );
  }
}
