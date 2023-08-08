import 'package:flutter/material.dart';
import 'package:psg_hackathon_farmers/widgets/TechWidget.dart';

class TechnologyScreen extends StatefulWidget {
  const TechnologyScreen({super.key});

  @override
  State<TechnologyScreen> createState() => _TechnologyScreenState();
}

class _TechnologyScreenState extends State<TechnologyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          child: Text("Become a part of the future.",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        ),
        TechWidget(text: "Hydrophonics"),
        TechWidget(text: "Sensor Technology"),
        TechWidget(text: "IoT Devices"),
        TechWidget(text: "Aerial Imagery"),
        TechWidget(text: "Modern Pesticides"),
      ]),
    );
  }
}
