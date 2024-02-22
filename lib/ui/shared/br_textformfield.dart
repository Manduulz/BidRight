import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BRTextFormField extends StatefulWidget {
  const BRTextFormField({
    Key? key,
    // br textformfield custom params
    this.labelText,
    this.errorText,
    this.suffixIcon,
    // textformfield labels
    this.initialValue,
    this.maxLines,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.autofillHints,
    this.textInputAction,
    this.onSaved,
    this.validator,
    this.focusNode,
    this.controller,
    this.inputFormatters,
    this.onChanged,
    this.onSubmitted,
  }) : super(key: key);

  // custom params
  final String? labelText;
  final String? errorText;
  final Widget? suffixIcon;

  // textformfield parameters
  final String? initialValue;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final Iterable<String>? autofillHints;
  final TextInputAction? textInputAction;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final ValueChanged<String>? onSubmitted;

  @override
  State<BRTextFormField> createState() => _BRTextFormFieldState();
}

class _BRTextFormFieldState extends State<BRTextFormField> {
  TextEditingController? _controller;

  TextEditingController get controller => widget.controller ?? _controller!;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _controller = TextEditingController(text: widget.initialValue);
    }
  }

  @override
  void didUpdateWidget(covariant BRTextFormField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != null) {
      _controller?.dispose();
      _controller = null;
    } else {
      _controller ??= TextEditingController(text: widget.initialValue);
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
        valueListenable: controller,
        builder: (context, value, _) {
          return TextFormField(
            decoration: (value.text.isNotEmpty
                    ? filledInputDecoration
                    : const InputDecoration())
                .copyWith(
              labelText: widget.labelText,
              errorText: widget.errorText,
              suffixIcon: widget.suffixIcon,
            ),
            maxLines: widget.maxLines,
            keyboardType: widget.keyboardType,
            textCapitalization: widget.textCapitalization,
            autofillHints: widget.autofillHints,
            textInputAction: widget.textInputAction,
            onSaved: widget.onSaved,
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onSubmitted,
            validator: widget.validator,
            focusNode: widget.focusNode,
            controller: controller,
            inputFormatters: widget.inputFormatters,
          );
        });
  }
}
