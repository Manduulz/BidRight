import 'package:bid_right_mobile/models/deed_delivery.dart';
import 'package:bid_right_mobile/models/winnings.dart';
import 'package:bid_right_mobile/ui/winnings/winning_detail_cubit.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
import 'package:uuid/uuid.dart';

import 'progress_card.dart';

class DeedSection extends StatelessWidget {
  final PastWinningDetail winning;

  const DeedSection({Key? key, required this.winning}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 200),
      alignment: Alignment.topCenter,
      child: ProgressCard(
        progress: _deedProgress(winning.status),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Deed delivery option',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            if (winning.status == CaseStatus.deedReady &&
                winning.caseDeedDelivery.isEmpty)
              const _DeedDeliverySelect(),
          ],
        ),
      ),
    );
  }
}

class _DeedDeliverySelect extends StatelessWidget {
  const _DeedDeliverySelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<WinningDetailCubit>();
    final deliveryMethod = cubit.state.deedDeliveryMethod;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 8),
        const Row(
          children: [
            Flexible(
                child: _DeedDeliveryToggleButton(
                    type: DeedDeliveryType.pickup, label: 'Pick Up')),
            SizedBox(width: 8),
            Flexible(
                child: _DeedDeliveryToggleButton(
                    type: DeedDeliveryType.delivery, label: 'Delivery')),
          ],
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          child: deliveryMethod?.maybeMap(
                ship: (method) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      const TextSpan(children: [
                        TextSpan(text: 'Shipping address '),
                        TextSpan(
                            text: '*', style: TextStyle(color: BRColors.btRed)),
                      ]),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    _AddressSelect(
                      onAddressSet: cubit.setAddress,
                      address: method.address,
                    )
                  ],
                ),
                orElse: () => null,
              ) ??
              const SizedBox.shrink(),
        ),
        if (cubit.state.isSaving)
          const Center(child: CircularProgressIndicator.adaptive())
          else
        TextButton.icon(
          label: const Text('Save delivery option'),
          icon: const Icon(Icons.save),
          onPressed: (deliveryMethod?.isValid ?? false)
                ? cubit.saveDeedDelivery
                : null,
          ),
      ],
    );
  }
}

class _DeedDeliveryToggleButton extends StatelessWidget {
  final DeedDeliveryType type;
  final String label;

  const _DeedDeliveryToggleButton(
      {Key? key, required this.type, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<WinningDetailCubit>();
    return BRToggleButton(
      label: label,
      isActivated: bloc.state.deedDeliveryMethod?.type == type,
      onTap: () => bloc.setDeedDeliveryType(type),
    );
  }
}

class _AddressSelect extends StatefulWidget {
  final String? address;
  final ValueSetter<String> onAddressSet;

  const _AddressSelect({Key? key, this.address, required this.onAddressSet})
      : super(key: key);

  @override
  State<_AddressSelect> createState() => _AddressSelectState();
}

class _AddressSelectState extends State<_AddressSelect> {
  late final TextEditingController _controller;
  final _sessionToken = const Uuid().v4();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.address);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: Theme.of(context).textTheme.bodyMedium,
      child: PlacesAutocompleteField(
        mode: Mode.overlay,
        controller: _controller,
        apiKey: 'AIzaSyB1T2Rvbhu94S7XVewd7I9GZtxVCZ7c_Qo',
        onChanged: widget.onAddressSet,
        sessionToken: _sessionToken,
      ),
    );
  }
}


Progress _deedProgress(CaseStatus status) {
  switch (status) {
    case CaseStatus.pendingTransaction:
    case CaseStatus.completeTransaction:
    case CaseStatus.denied:
    case CaseStatus.unknown:
    case CaseStatus.waitingCourtHouse:
    case CaseStatus.approved:
    case CaseStatus.deedReady:
    case CaseStatus.paymentRefunded:
      return Progress.none;
    case CaseStatus.deedIssued:
      return Progress.finished;
  }
}
