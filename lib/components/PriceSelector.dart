import 'package:crypto_wallet/components/CircularIcon.dart';
import 'package:flutter/material.dart';

class PriceSelector extends StatefulWidget {
  const PriceSelector({Key? key}) : super(key: key);

  @override
  _PriceSelectorState createState() => _PriceSelectorState();
}

class _PriceSelectorState extends State<PriceSelector> {
  double _price = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$234.55"),
              Row(children: [
                Text(
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.white24,
                    ),
                    "Avg. Price "),
                Text(
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.white,
                    ),
                    "24 Hrs"),
                Icon(size: 6, Icons.arrow_downward)
              ]),
            ],
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                width: 320,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white24,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _price--;
                              });
                            },
                            icon: Icon(
                              Icons.remove,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Text(
                                style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: 12,
                                ),
                                "AMOUNT"),
                            Text(
                              '$_price',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ],
                        )),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white24,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _price++;
                              });
                            },
                            icon: Icon(
                              Icons.add,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
