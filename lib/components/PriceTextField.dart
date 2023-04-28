import 'package:flutter/material.dart';

class PriceInputField extends StatefulWidget {
  const PriceInputField({Key? key}) : super(key: key);

  @override
  State<PriceInputField> createState() => _PriceInputFieldState();
}

class _PriceInputFieldState extends State<PriceInputField> {
  double price = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        price--;
                      });
                    },
                    icon: Icon(size: 18, Icons.remove)),
                SizedBox(
                  width: 15,
                ),
                Text("45,567"),
                SizedBox(width: 15),
                IconButton(
                  onPressed: () {
                    setState(() {
                      price++;
                    });
                  },
                  icon: Icon(size: 18, Icons.add),
                ),
              ]),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(style: TextStyle(fontSize: 12), "PRICE"),
              SizedBox(
                width: 70,
              ),
              Text(style: TextStyle(fontSize: 12), "\$456")
            ],
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
