import 'package:flutter/material.dart';

const List<String> list = <String>[
  'UPSC - CSE',
  'APSC - CCE',
];

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: DropdownMenu<String>(
        trailingIcon: const Icon(Icons.keyboard_arrow_down),
        selectedTrailingIcon: const Icon(Icons.keyboard_arrow_up),
        inputDecorationTheme:
            const InputDecorationTheme(border: InputBorder.none),
        initialSelection: list.first,
        onSelected: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
            // set the global preparing_for
          });
        },
        dropdownMenuEntries:
            list.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(value: value, label: value);
        }).toList(),
      ),
    );
  }
}
