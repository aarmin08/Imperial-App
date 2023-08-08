import 'package:flutter/material.dart';
import 'package:psg_hackathon_farmers/Screens/chat.dart';
import 'package:psg_hackathon_farmers/Screens/interact.dart';

class Manager extends StatefulWidget {
  final String region;
  const Manager({
    super.key,
    required this.region,
  });

  @override
  State<Manager> createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  final List<Widget> pages = [Chat(), Interact()];
  int index = 0;

  void change(int ind) {
    setState(() {
      index = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 63, 111, 65),
        title: Text(index == 0 ? "Home" : "Farmers in ${widget.region}"),
        centerTitle: false,
        leading: const Icon(Icons.emoji_nature_sharp),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                size: 30,
              ))
        ],
      ),
      body: pages.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Color.fromARGB(255, 45, 152, 61)),
        BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Interact",
            backgroundColor: const Color(0xff982D34)),
      ], currentIndex: index, onTap: change),
    );
  }
}
