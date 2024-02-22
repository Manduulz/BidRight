import 'package:bid_right_mobile/models/authenticator.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/ui/shared/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'two_factor_setup_cubit.dart';
import 'two_factor_setup_state.dart';

class TwoFactorSetup extends StatelessWidget {
  const TwoFactorSetup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two-factor authentication'),
      ),
      body: BlocBuilder<TwoFactorSetupCubit, TwoFactorSetupState>(
        builder: (context, state) {
          return state.hasAuthenticator.map(
            uninitialized: (_) => const SizedBox(),
            loading: (_) => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            error: (_) => ErrorIndicator(
                text: 'Error loading authenticator status',
                onRetry: () => context
                    .read<TwoFactorSetupCubit>()
                    .loadAuthenticatorStatus()),
            loaded: (loaded) => loaded.value
                ? _ViewAuthenticator(
                    authenticator: state.authenticatorInfo.valueOrNull)
                : const _AddAuthenticator(),
          );
        },
      ),
    );
  }
}

class _AddAuthenticator extends StatelessWidget {
  const _AddAuthenticator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocSelector<TwoFactorSetupCubit, TwoFactorSetupState,
              LoadingState<Authenticator>>(
          selector: (state) => state.authenticatorInfo,
          builder: (context, authenticator) {
            return authenticator.map(
              uninitialized: (_) => Column(
                children: [
                  const Text('No authenticator attached to account'),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<TwoFactorSetupCubit>().addAuthenticator(),
                    child: const Text('Add authenticator'),
                  ),
                ],
              ),
              loading: (_) => const Column(
                children: [
                  Text('Adding authenticator...'),
                  CircularProgressIndicator.adaptive(),
                ],
              ),
              error: (_) => ErrorIndicator(
                text: 'Error adding authenticator',
                onRetry: () =>
                    context.read<TwoFactorSetupCubit>().addAuthenticator(),
              ),
              loaded: (loaded) =>
                  _ViewAuthenticator(authenticator: loaded.value),
            );
          }),
    );
  }
}

class _ViewAuthenticator extends StatefulWidget {
  const _ViewAuthenticator({Key? key, this.authenticator}) : super(key: key);

  final Authenticator? authenticator;

  @override
  State<_ViewAuthenticator> createState() => _ViewAuthenticatorState();
}

class _ViewAuthenticatorState extends State<_ViewAuthenticator> {
  @override
  Widget build(BuildContext context) {
    final authenticator = widget.authenticator;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (authenticator != null)
            _AuthenticatorDetail(authenticator: authenticator)
          else
            const Text('Authenticator is set up.'),
          BlocSelector<TwoFactorSetupCubit, TwoFactorSetupState, bool>(
            selector: (state) => state.isRemoving,
            builder: (context, isRemoving) {
              return ElevatedButton(
                onPressed: isRemoving ? null : _confirmRemove,
                child: const Text('Remove authenticator'),
              );
            },
          )
        ],
      ),
    );
  }

  Future<void> _confirmRemove() async {
    final shouldRemove = await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Remove authenticator?'),
                content: const Text('You will no longer be able to use your '
                    'authenticator app to log in.'),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: const Text('Cancel')),
                  TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text('Remove')),
                ],
              );
            }) ??
        false;

    if (!mounted || !shouldRemove) {
      return;
    }

    await context.read<TwoFactorSetupCubit>().removeAuthenticator();
  }
}

class _AuthenticatorDetail extends StatelessWidget {
  const _AuthenticatorDetail({
    Key? key,
    required this.authenticator,
  }) : super(key: key);

  final Authenticator authenticator;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'Authenticator setup code: ${authenticator.manualEntrySetupCode}'),
            IconButton(
              onPressed: _copySetupCode,
              icon: const Icon(Icons.copy),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () => _showQrCode(context),
          child: const Text('Show QR code'),
        )
      ],
    );
  }

  Future<void> _copySetupCode() => Clipboard.setData(
      ClipboardData(text: authenticator.manualEntrySetupCode));

  Future<void> _showQrCode(BuildContext context) {
    final uri = Uri.parse(authenticator.qrCodeImageUrl);
    final ImageProvider image;
    if (uri.scheme == 'data') {
      image = MemoryImage(UriData.fromUri(uri).contentAsBytes());
    } else {
      image = NetworkImage(authenticator.qrCodeImageUrl);
    }
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Image(image: image),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
