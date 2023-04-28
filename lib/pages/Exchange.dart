import 'package:crypto_wallet/components/PriceTextField.dart';
import 'package:crypto_wallet/components/TokenDropdown.dart';
import 'package:flutter/material.dart';

class ExchangePage extends StatefulWidget {
  const ExchangePage({Key? key}) : super(key: key);

  @override
  _ExchangePageState createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  List<String> optionArray = ['limit', 'market', 'pool', 'Info'];

  final TextEditingController colorController = TextEditingController();
  List<DropdownMenuItem<String>> tokenList = [
    DropdownMenuItem(
      value: 'USD',
      child: Row(
        children: [
          Icon(Icons.flag),
          SizedBox(width: 10),
          Text('USD'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 'EUR',
      child: Row(
        children: [
          Icon(Icons.flag),
          SizedBox(width: 10),
          Text('EUR'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 'GBP',
      child: Row(
        children: [
          Icon(Icons.flag),
          SizedBox(width: 10),
          Text('GBP'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 'JPY',
      child: Row(
        children: [
          Icon(Icons.flag),
          SizedBox(width: 10),
          Text('JPY'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 'CAD',
      child: Row(
        children: [
          Icon(Icons.flag),
          SizedBox(width: 10),
          Text('CAD'),
        ],
      ),
    ),
  ];
  String? selectedGiveToken;
  String? selectedGetToken;
  int? selectedOption = 0;
  double orderPrice = 0;
  Widget createChipLabels(List<String> items) {
    return Wrap(
      spacing: 5.0,
      children: List<Widget>.generate(
        items.length,
        (int index) {
          return ChoiceChip(
            label: Text(items[index]),
            selected: selectedOption == index,
            onSelected: (bool selected) {
              setState(() {
                selectedOption = selected ? index : null;
              });
            },
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    String dateStr = "${today.day}-${today.month}-${today.year}";
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          createChipLabels(optionArray),
          const SizedBox(height: 10),
          Row(
            children: [
              const Expanded(
                  child: Text(
                "EXCHANGE",
                style: TextStyle(fontSize: 24),
              )),
              Text(dateStr)
            ],
          ),
          SizedBox(
            height: 320,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(textAlign: TextAlign.start, "Your Exchange"),
                        Row(
                          children: [
                            TokenDropdown(
                              key: Key("Give Token"),
                              items: tokenList,
                              value: 'USD',
                              onChanged: (value) {
                                // Do something with the value
                                setState(() {
                                  selectedGiveToken = value;
                                });
                              },
                            ),
                            SizedBox(width: 50),
                            const PriceInputField()
                          ],
                        ),
                        Divider(
                          color: Colors.white10,
                          thickness: 2,
                          // alignment: Alignment.center,
                        ),
                        Center(
                            child: Icon(
                                size: 18, Icons.currency_exchange_rounded)),
                        Divider(
                          color: Colors.white10,
                          thickness: 2,
                          // alignment: Alignment.center,
                        ),
                        Text(textAlign: TextAlign.start, "Your Recieve"),
                        Row(
                          children: [
                            TokenDropdown(
                              key: Key("Give Token"),
                              items: tokenList,
                              value: 'USD',
                              onChanged: (value) {
                                // Do something with the value
                                setState(() {
                                  selectedGiveToken = value;
                                });
                              },
                            ),
                            SizedBox(width: 50),
                            const PriceInputField()
                          ],
                        ),
                        Divider(
                          color: Colors.white10,
                          thickness: 1,
                          // alignment: Alignment.center,
                        ),
                        Row(
                          children: [
                            Text("Transaction Cost"),
                            SizedBox(
                              width: 84,
                            ),
                            Text(" \$2.4"),
                            SizedBox(
                              width: 8,
                            ),
                            Text("Avax 12.5"),
                          ],
                        )
                      ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
            width: double.infinity,
          ),
          SizedBox(
            height: 24,
            width: double.infinity,
            child: Text(
              "MA / AMA / ROLL",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 12,
            width: double.infinity,
          ),
          SizedBox(
            height: 48,
            child: Card(
              elevation: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Exchange for "),
                  SizedBox(
                    height: 32,
                    child: Card(
                      surfaceTintColor: Colors.black,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            "\$546"),
                      ),
                    ),
                  ),
                  Text(" LINK"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
