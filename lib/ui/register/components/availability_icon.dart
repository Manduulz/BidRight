import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:flutter/material.dart';

class AvailabilityIcon extends StatelessWidget {
  const AvailabilityIcon(
      {Key? key, required this.result, required this.onRetry})
      : super(key: key);

  final LoadingState<bool> result;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return result.map(
      uninitialized: (_) => const SizedBox.shrink(),
      loading: (_) => const Padding(
        padding: EdgeInsets.all(12.0),
        child: SizedBox.square(
          dimension: 24,
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: (_) => InkWell(
        onTap: onRetry,
        child: const Icon(Icons.question_mark),
      ),
      loaded: (loaded) => loaded.value
          ? const Icon(
              Icons.check,
              color: Colors.green,
            )
          : const Icon(
              Icons.close,
              color: Colors.red,
            ),
    );
  }
}
