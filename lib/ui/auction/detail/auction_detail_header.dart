import 'package:bid_right_mobile/ui/auction/detail/auction_cubit.dart';
import 'package:bid_right_mobile/ui/auction/detail/components/auction_share_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/property_select.dart';

const _edgePadding = EdgeInsets.symmetric(horizontal: 16);

class AuctionDetailHeader extends StatelessWidget {
  const AuctionDetailHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isJoined = context.select<AuctionCubit, bool>(
        (cubit) => cubit.state.lotDetail.valueOrNull?.isJoined ?? false);

    final appBar = AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leading: const CloseButton(),
      title: const Text('Property Details'),
      actions: [
        const AuctionShareButton(),
        if (isJoined) const LeaveLotButton(),
      ],
    );

    return Ink(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff1b355e), Color(0xff1daef0)],
          ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24))),
      child: DefaultTextStyle.merge(
        style: const TextStyle(color: Colors.white),
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: appBar.preferredSize.height +
                    MediaQuery.of(context).padding.top,
                child: appBar,
              ),
              const _HeaderContent(),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class LeaveLotButton extends StatefulWidget {
  const LeaveLotButton({Key? key}) : super(key: key);

  @override
  State<LeaveLotButton> createState() => _LeaveLotButtonState();
}

class _LeaveLotButtonState extends State<LeaveLotButton> {
  @override
  Widget build(BuildContext context) {
    final isLeaving =
        context.select<AuctionCubit, bool>((cubit) => cubit.state.isLeaving);

    if (isLeaving) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    return IconButton(
      onPressed: _leaveLot,
      color: Colors.white,
      icon: const Icon(Icons.logout),
      tooltip: 'Leave lot',
    );
  }

  Future<void> _leaveLot() async {
    final shouldLeave = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Leave lot'),
              content: const Text('Really leave this lot?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Leave'),
                ),
              ],
            );
          },
        ) ??
        false;

    if (shouldLeave && mounted) {
      await context.read<AuctionCubit>().unregister();
    }
  }
}

class _HeaderContent extends StatelessWidget {
  const _HeaderContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: _edgePadding,
      child: PropertySelector(color: Colors.white),
    );
  }
}
