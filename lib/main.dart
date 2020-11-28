import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hey there"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Hello"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
      ),
    ),
  ));
}
