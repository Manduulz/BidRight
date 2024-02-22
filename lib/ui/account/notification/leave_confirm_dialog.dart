import 'package:flutter/material.dart';

Future<bool> confirmLeave(BuildContext context) async {
  return await showDialog<bool>(
        context: context,
        builder: (context) => const _LeaveConfirmDialog(),
      ) ??
      false;
}

class _LeaveConfirmDialog extends StatelessWidget {
  const _LeaveConfirmDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text('You have unsaved changes.  Really leave?'),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel')),
        TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Leave')),
      ],
    );
  }
}
