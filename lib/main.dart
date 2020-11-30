import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Menu(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Hey there",
            style: TextStyle(fontFamily: "EvilEmpire"),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[600]),
      body: Column(
        children: [
          Text("Text"),
          ElevatedButton(onPressed: () {}, child: Text("Button")),
          Container(
            child: Text("Inside a container"),
            color: Colors.blue,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      // Row(
      //   children: [
      //     Text("Hello"),
      //     ElevatedButton(onPressed: () {}, child: Text("Button")),
      //     Container(
      //       child: Text("Inside a container"),
      //       color: Colors.blue,
      //       padding: EdgeInsets.all(10),
      //       margin: EdgeInsets.all(10),
      //     )
      //   ],
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      // ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () {
          print("hello");
        },
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull Widget"),
        centerTitle: true,
      ),
      body: Center(child: Text("$counter")),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
