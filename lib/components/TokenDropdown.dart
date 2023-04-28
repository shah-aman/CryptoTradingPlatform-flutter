import 'package:flutter/material.dart';

class TokenDropdown extends StatelessWidget {
  final List<DropdownMenuItem<String>> items;
  final String value;
  final Function(String?) onChanged;

  const TokenDropdown({
    required Key key,
    required this.items,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white12,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: value,
          onChanged: onChanged,
          items: items,
          style: TextStyle(fontSize: 12),
          icon: Icon(Icons.arrow_drop_down_outlined),
        ),
      ),
    );
  }
}
