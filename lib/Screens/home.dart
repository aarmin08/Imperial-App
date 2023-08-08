import 'package:flutter/material.dart';
import 'package:psg_hackathon_farmers/Screens/Manager.dart';
import 'package:psg_hackathon_farmers/Screens/chat.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> a = [
  'Haryana',
  'Punjab',
  'Himachal Pradesh',
  'Gujarat',
  'Jammu and Kashmir',
  'Chennai',
  'Kerala',
  'Leh/Ladakh'
];

List<String> b = [
  'English',
  'हिंदी',
  'తెలుగు',
  'اردو',
];

class _HomePageState extends State<HomePage> {
  String dval = a.first;
  String bval = b.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(
                  "assets/logo.png",
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 25),
              child: Text(
                "Sign up",
                style: TextStyle(
                    fontSize: 38, color: Color.fromRGBO(199, 219, 163, 1)),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 23, vertical: 20),
              child: const TextField(
                decoration: InputDecoration(
                  label: Text("Name"),
                  focusColor: Color.fromRGBO(199, 219, 163, 1),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 23),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Password"),
                  focusColor: Color.fromRGBO(199, 219, 163, 1),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 23),
              child: Row(
                children: [
                  const Text(
                    "Select Region/State: ",
                    style: TextStyle(
                        color: Color.fromRGBO(199, 219, 163, 1), fontSize: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  DropdownButton(
                    value: dval,
                    items: a.map<DropdownMenuItem<String>>((String e) {
                      return DropdownMenuItem<String>(
                        value: e,
                        child: Text(e),
                      );
                    }).toList(),
                    onChanged: (value) {
                      dval = value!;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 23),
              child: Row(
                children: [
                  const Text(
                    "Select Language: ",
                    style: TextStyle(
                        color: Color.fromRGBO(199, 219, 163, 1), fontSize: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  DropdownButton(
                    value: bval,
                    items: b.map<DropdownMenuItem<String>>((String e) {
                      return DropdownMenuItem<String>(
                        value: e,
                        child: Text(e),
                      );
                    }).toList(),
                    onChanged: (value) {
                      bval = value!;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25),
              child: Material(
                elevation: 90,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => Manager(region: dval)));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    color: Color.fromRGBO(199, 219, 163, 1),
                    child: const Center(
                        child: Text(
                      "Create Farmers Profile!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
