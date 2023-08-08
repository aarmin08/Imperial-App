import 'package:flutter/material.dart';

import '../widgets/MessageTile.dart';

class Interact extends StatefulWidget {
  const Interact({super.key});

  @override
  State<Interact> createState() => _InteractState();
}

class _InteractState extends State<Interact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: [
      ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 15),
          MessageTile(
              message: "Farmers can discuss about specific problems, here",
              isLeft: true),
          MessageTile(
              message: "This allows for greater awareness and communication",
              isLeft: false),
          MessageTile(
              message: "किसान यहां विशिष्ट समस्याओं पर चर्चा कर सकते हैं",
              isLeft: true),
          MessageTile(
              message: "यह अधिक जागरूकता और संचार की अनुमति देता है",
              isLeft: false),
          MessageTile(
              message: "రైతులు నిర్దిష్ట సమస్యల గురించి ఇక్కడ చర్చించవచ్చు",
              isLeft: true),
          MessageTile(
              message: "ఇది మెరుగైన కమ్యూనికేషన్‌కు దారితీస్తుంది",
              isLeft: false),
        ],
      ),
      Expanded(child: Container()),
      const Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                labelText: "Interact with others!",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ))
    ])));
  }
}
