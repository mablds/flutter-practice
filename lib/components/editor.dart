import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController? inputController;
  final String? inputTitle;
  final String? inputHint;
  final IconData? inputIcon;

  const Editor({ this.inputController, this.inputTitle, this.inputHint, this.inputIcon });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      child: TextField(
        controller: inputController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          icon: inputIcon != null ? Icon(inputIcon) : null,
          labelText: inputTitle,
          hintText: inputHint,
        ),
      ),
    );
  }
}