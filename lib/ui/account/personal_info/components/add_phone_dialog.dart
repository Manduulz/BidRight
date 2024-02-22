import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

Future<String?> selectPhoneNumber(BuildContext context) {
  return showDialog(context: context, builder: (_) => const PhoneInputDialog());
}

class PhoneInputDialog extends StatefulWidget {
  const PhoneInputDialog({super.key});

  @override
  State<PhoneInputDialog> createState() => _PhoneInputDialogState();
}

class _PhoneInputDialogState extends State<PhoneInputDialog> {
  final phoneController = MaskedTextController(mask: '(000) 000-0000');

  String? phoneNumber;

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add phone number'),
      content: TextField(
        controller: phoneController,
        decoration: const InputDecoration(
          labelText: 'Phone number',
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        keyboardType: TextInputType.phone,
        onChanged: (value) {
          final phone = phoneController.unmasked;
          setState(() {
            phoneNumber = (phone.length == 10) ? phone : null;
          });
        },
      ),
      actions: [
        TextButton(
          onPressed: phoneNumber == null
              ? null
              : () => Navigator.of(context).pop(phoneNumber),
          child: const Text('Add Phone'),
        ),
      ],
    );
  }
}
