// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:psg_hackathon_farmers/widgets/NewsTile.dart';
import 'package:psg_hackathon_farmers/widgets/PricesTile.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Text("Latest Government Info",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 150,
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                NewsTile(
                  governmentInfo: false,
                ),
                NewsTile(
                  governmentInfo: false,
                ),
                NewsTile(
                  governmentInfo: false,
                ),
                NewsTile(
                  governmentInfo: false,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Text("Todays News",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 150,
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                NewsTile(),
                NewsTile(),
                NewsTile(),
                NewsTile(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Text("Farm items Prices and values",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          ),
          PricesTile(
            vegetable: "Potato",
            high: true,
          ),
          Divider(
            color: Colors.grey,
          ),
          PricesTile(
            vegetable: "Tomato",
            high: false,
          ),
          Divider(
            color: Colors.grey,
          ),
          PricesTile(
            vegetable: "Eggplant",
            high: true,
          ),
          Divider(
            color: Colors.grey,
          ),
          PricesTile(
            vegetable: "Apples",
            high: false,
          ),
          Divider(
            color: Colors.grey,
          ),
          PricesTile(
            vegetable: "Grapes",
            high: false,
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
