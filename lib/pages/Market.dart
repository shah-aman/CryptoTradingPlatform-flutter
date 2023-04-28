import 'package:crypto_wallet/components/PriceSelector.dart';
import 'package:flutter/material.dart';
import '../components/PillOptions.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  _MarketPageState createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  int? selectedSide;
  List<String> optionArray = [
    'Limit',
    'Market',
    'Pool',
  ];
  List<String> statsPills = [
    "Open Orders",
    "Market History",
    "Market Order",
    "Margin Data",
    "Funds Movement",
  ];
  Widget createChipLabels(List<String> items) {
    return Wrap(
      spacing: 5.0,
      children: List<Widget>.generate(
        items.length,
        (int index) {
          return ChoiceChip(
            label: Text(items[index]),
            selected: selectedSide == index,
            onSelected: (bool selected) {
              setState(() {
                selectedSide = selected ? index : null;
              });
            },
          );
        },
      ).toList(),
    );
  }

  Widget createMarketOptionLabels(List<String> items) {
    return Wrap(
      spacing: 5.0,
      children: List<Widget>.generate(
        items.length,
        (int index) {
          return ChoiceChip(
            label: Text(items[index]),
            selected: selectedSide == index,
            onSelected: (bool selected) {
              setState(() {
                selectedSide = selected ? index : null;
              });
            },
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PillOptions(),
        Padding(
            padding: EdgeInsets.all(20), child: createChipLabels(optionArray)),
        PriceSelector(),
        PriceSelector(),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: SizedBox(
            height: 64,
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Buy for "),
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
                              "\$24"),
                        ),
                      ),
                    ),
                    Text(" LINK"),
                  ],
                ),
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: createMarketOptionLabels(statsPills),
          ),
        ),
      ],
    );
  }
}
