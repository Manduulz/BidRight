import 'package:bid_right_mobile/models/notification_settings.dart';
import 'package:bid_right_mobile/ui/account/notification/leave_confirm_dialog.dart';
import 'package:bid_right_mobile/widgets/toggle_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'notification_cubit.dart';
import 'notification_state.dart';

//-------------------------------

class AccountNotificationScreen extends StatefulWidget {
  const AccountNotificationScreen({Key? key}) : super(key: key);

  @override
  State<AccountNotificationScreen> createState() =>
      _AccountNotificationScreenState();
}

class _AccountNotificationScreenState extends State<AccountNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BRColors.bglightBlue,
      appBar: AppBar(
        title: const Text('Notification Settings'),
      ),
      body: SafeArea(
        child: BlocBuilder<NotificationCubit, NotificationState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: state.settings.map(
                      uninitialized: (_) => const SizedBox.shrink(),
                      loading: (_) => const Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                      error: (_) => _ErrorWidget(
                          onReload: () =>
                              context.read<NotificationCubit>().loadSettings()),
                      loaded: (loaded) => WillPopScope(
                          onWillPop: () => _onWillPop(context),
                          child: _NotificationSettingContent(
                              settings: loaded.value))),
                ),
                AnimatedSize(
                  duration: const Duration(milliseconds: 200),
                  child: state.failedUpdates.isEmpty
                      ? const SizedBox(height: 0)
                      : Material(
                          elevation: 2,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(4)),
                          ),
                          color: BRColors.bgLightGray,
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(minHeight: 48),
                            child: Center(
                              child: Text.rich(TextSpan(children: [
                                const TextSpan(
                                    text:
                                        'Failed to update notification settings. '),
                                TextSpan(
                                  text: 'Retry',
                                  style:
                                      const TextStyle(color: Colors.blueAccent),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => context
                                        .read<NotificationCubit>()
                                        .retryFailedUpdates(),
                                )
                              ])),
                            ),
                          ),
                        ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    final cubit = context.read<NotificationCubit>();
    final state = cubit.state;

    if (!state.hasInFlightUpdates && state.failedUpdates.isEmpty) {
      return true;
    }

    final newState = await cubit.stream
        .where((event) => !event.hasInFlightUpdates)
        .timeout(const Duration(seconds: 5), onTimeout: (sink) {
      sink.add(cubit.state);
      sink.close();
    }).first;

    if (!mounted) {
      return false;
    }

    if (!newState.hasInFlightUpdates && newState.failedUpdates.isEmpty) {
      return true;
    }

    return confirmLeave(context);
  }
}

class _NotificationSettingContent extends StatelessWidget {
  final List<NotificationSetting> settings;

  const _NotificationSettingContent({
    Key? key,
    required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: settings.length,
      itemBuilder: (context, index) {
        return _NotificationSettingItem(setting: settings[index]);
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<NotificationSetting>('settings', settings));
  }
}

class _NotificationSettingItem extends StatelessWidget {
  final NotificationSetting setting;

  const _NotificationSettingItem({Key? key, required this.setting})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(_textForNotificationEvent(setting.notification)),
        Row(
          children: [
            for (NotificationType type in [
              NotificationType.push,
              NotificationType.text,
              NotificationType.email,
            ])
              Expanded(child: _buildButton(context, type))
          ],
        )
      ],
    );
  }

  Widget _buildButton(BuildContext context, NotificationType type) {
    final specificSetting = setting.settings[type]!;
    return specificSetting.isEnabled
        ? Padding(
            padding: const EdgeInsets.all(4),
            child: BRToggleButton(
              label: _nameForNotificationType(type),
              isActivated: specificSetting.isSubscribed,
              onTap: () => context.read<NotificationCubit>().updateSetting(
                    eventType: setting.notification,
                    notificationType: type,
                    subscribe: !specificSetting.isSubscribed,
                  ),
            ),
          )
        : const SizedBox();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<NotificationSetting>('setting', setting));
  }
}

class _ErrorWidget extends StatelessWidget {
  final VoidCallback onReload;

  const _ErrorWidget({Key? key, required this.onReload}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Error loading notification settings.'),
          ElevatedButton(onPressed: onReload, child: const Text('Retry')),
        ],
      ),
    );
  }
}

String _nameForNotificationType(NotificationType type) {
  switch (type) {
    case NotificationType.text:
      return 'Text';
    case NotificationType.email:
      return 'Email';
    case NotificationType.push:
      return 'Push';
  }
}

TextSpan _textForNotificationEvent(NotificationEventType eventType) {
  const boldStyle = TextStyle(fontWeight: FontWeight.bold);
  switch (eventType) {
    case NotificationEventType.accountDeactivated:
      return const TextSpan(children: [
        TextSpan(text: 'When my '),
        TextSpan(text: 'account is deactivated', style: boldStyle),
        TextSpan(text: '.'),
      ]);
    case NotificationEventType.caseDepositPending:
      return const TextSpan(text: 'When a case deposit is pending.');
    case NotificationEventType.casePaymentPending:
      return const TextSpan(text: 'When a case payment is pending.');
    case NotificationEventType.bankAccountLinked:
      return const TextSpan(children: [
        TextSpan(text: 'When a bank account is '),
        TextSpan(text: 'linked', style: boldStyle),
        TextSpan(text: '.'),
      ]);
    case NotificationEventType.bankAccountNeedsVerification:
      return const TextSpan(children: [
        TextSpan(text: 'When a bank account '),
        TextSpan(text: 'needs verification', style: boldStyle),
        TextSpan(text: '.'),
      ]);
    case NotificationEventType.bankAccountRemoved:
      return const TextSpan(children: [
        TextSpan(text: 'When a bank account is '),
        TextSpan(text: 'unlinked', style: boldStyle),
        TextSpan(text: '.'),
      ]);
    case NotificationEventType.caseDeedReady:
      return const TextSpan(text: 'When a case deed is ready.');
    case NotificationEventType.caseDeedShipped:
      return const TextSpan(text: 'When a case deed is shipped.');
    case NotificationEventType.contactUsRequestConfirmation:
      return const TextSpan(text: 'When a contact us request is received.');
    case NotificationEventType.pinnedAuctionCancelled:
      return const TextSpan(children: [
        TextSpan(text: 'When a pinned auction '),
        TextSpan(text: 'is cancelled', style: boldStyle),
        TextSpan(text: '.'),
      ]);
    case NotificationEventType.pinnedAuctionStarted:
      return const TextSpan(children: [
        TextSpan(text: 'When a pinned auction '),
        TextSpan(text: 'starts', style: boldStyle),
        TextSpan(text: '.'),
      ]);
    case NotificationEventType.pinnedAuctionStartingSoon:
      return const TextSpan(children: [
        TextSpan(text: 'When a pinned auction '),
        TextSpan(text: 'is starting soon', style: boldStyle),
        TextSpan(text: '.'),
      ]);
    case NotificationEventType.purchaseProfileAdded:
      return const TextSpan(text: 'When a new purchase profile is added.');
    case NotificationEventType.purchaseProfileRemoved:
      return const TextSpan(text: 'When a purchase profile is removed.');
    case NotificationEventType.other:
      return const TextSpan();
  }
}
