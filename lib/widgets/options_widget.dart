import 'package:flutter/material.dart';

class OptionsWidget extends StatefulWidget {
  final int optionIndex;
  final int? optionSelected;
  final String? titlu;

  const OptionsWidget(
      {super.key, required this.optionIndex, this.optionSelected, this.titlu});

  @override
  State<OptionsWidget> createState() => _OptionsWidgetState();
}

class _OptionsWidgetState extends State<OptionsWidget> {
  int? optionSelected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    optionSelected = widget.optionSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Radio<int>(
          groupValue: optionSelected,
          value: widget.optionIndex,
          onChanged: (int? value) {
            setState(() {
              optionSelected = value;
            });
          },
        ),
      ],
    );
  }
}
