import 'package:flutter/material.dart';

class PricesTile extends StatelessWidget {
  final String vegetable;
  final bool high;
  const PricesTile({super.key, required this.vegetable, required this.high});

  @override
  Widget build(BuildContext context) {
    /*return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 70,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 4, 33, 24),
      ),
    );*/
    return ListTile(
      title: Row(
        children: [
          Text(
            "$vegetable: ",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            high ? "50₹/kg" : "90₹/kg",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: high ? Colors.green : Colors.red),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Text("5 Day average: "),
          Text(high ? "51.7₹/kg" : "88.9rs/kg")
        ],
      ),
    );
  }
}
