import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberField extends StatefulWidget {
  const NumberField({
    super.key,
    this.controller,
    required this.minimum,
    required this.maximum,
    required this.onChanged,
    this.decoration = const InputDecoration(),
  });

  final TextEditingController? controller;
  final num minimum;
  final num maximum;
  final ValueChanged<int?> onChanged;
  final InputDecoration decoration;

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  TextEditingController? _controller;

  TextEditingController get controller => widget.controller ?? _controller!;

  @override
  void initState() {
    super.initState();
    _updateController();
  }

  @override
  void didUpdateWidget(covariant NumberField oldWidget) {
    super.didUpdateWidget(oldWidget);
    _updateController();
  }

  void _updateController() {
    if (widget.controller == null) {
      _controller ??= TextEditingController();
    } else {
      _controller?.dispose();
      _controller = null;
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final amount = int.tryParse(controller.text);
    final isValid =
        amount != null && amount >= widget.minimum && amount <= widget.maximum;

    return TextField(
      controller: controller,
      decoration: widget.decoration,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      style: TextStyle(color: isValid ? Colors.black : Colors.red),
      onChanged: _textChanged,
    );
  }

  void _textChanged(String text) {
    final value = int.tryParse(text);
    widget.onChanged(value);
  }
}
