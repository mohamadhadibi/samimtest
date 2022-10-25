import 'package:flutter/material.dart';
import 'package:samimtest/core/utils/env.dart';

class TextInputArea extends StatefulWidget {
  const TextInputArea({
    Key? key,
    required this.hint,
    required this.validator,
    required this.onSaved,
    this.onChanged,
    this.textInputAction,
  }) : super(key: key);

  final String hint;
  final Function validator;
  final Function onSaved;
  final Function? onChanged;
  final TextInputAction? textInputAction;

  @override
  State<TextInputArea> createState() => _TextInputAreaState();
}

class _TextInputAreaState extends State<TextInputArea> {

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 56),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextFormField(
        textInputAction: widget.textInputAction,
        enableInteractiveSelection: Env.platform != iOS,
        validator: (String? value) => widget.validator(value),
        obscureText: false,
        onSaved: (String? value) => widget.onSaved(value),
        onChanged: (String value) {
          if (widget.onChanged != null) widget.onChanged!(value);
        },
        style: Theme.of(context).textTheme.bodyText2,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: widget.hint,
          hintStyle: Theme.of(context).textTheme.bodyText1,
          contentPadding: const EdgeInsets.all(4),
        ),
      ),
    );
  }
}
