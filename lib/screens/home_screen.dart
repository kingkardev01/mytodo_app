
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

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  setState(() {
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  setState(() {
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border_outlined),
                onPressed: () {
                  setState(() {
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () {
                  setState(() {
                  });
                },
              )
            ],
          ),
        ),
      ),
      body: const Center(child: Text("this is project"),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showDialog(context);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


void _showDialog(context){
  showDialog(context: context,
      builder: (BuildContext context){
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
          return AlertDialog(
            scrollable: true,
            title: const Text(
              'New Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.brown),
            ),
            content: SizedBox(
              height: height * 0.35,
              width: width,
              child: Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      style: const TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        hintText: 'Task',
                        hintStyle: const TextStyle(fontSize: 14),
                        icon: const Icon(Icons.list, color: Colors.brown),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      style: const TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        hintText: 'Description',
                        hintStyle: const TextStyle(fontSize: 14),
                        icon: const Icon(Icons.description, color: Colors.brown),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Row(
                    //   children: const <Widget>[
                    //     Icon(CupertinoIcons.tag, color: Colors.brown),
                    //     SizedBox(width: 15.0),
                    //     TaskTags(),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                ),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ],
          );
      }
  );
}



