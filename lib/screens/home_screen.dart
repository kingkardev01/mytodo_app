import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("To-Do List"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_view_day),
            ),
          ],
        ),
      body: Center(child: Text("this is project"),),
    );
  }
}
