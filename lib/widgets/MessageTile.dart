import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  String message;
  bool isLeft;
  MessageTile({Key? key, required this.message, required this.isLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment:
            isLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          Visibility(
            visible: isLeft,
            child: Container(
              padding: EdgeInsets.only(left: 5),
              height: 40,
              width: 40,
              child: CircleAvatar(
                radius: 30,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                backgroundColor: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(10),
            child: Flexible(
              fit: FlexFit.tight,
              child: Text(message,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Avenir",
                      overflow: TextOverflow.visible)),
            ),
            decoration: BoxDecoration(
              color: isLeft ? Colors.blue : Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
          Visibility(
            visible: !isLeft,
            child: Container(
              margin: EdgeInsets.only(right: 5),
              height: 40,
              width: 40,
              child: CircleAvatar(
                radius: 30,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                backgroundColor: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
