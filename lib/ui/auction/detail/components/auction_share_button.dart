import 'package:bid_right_mobile/repository/api/base_url.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

class AuctionShareButton extends StatelessWidget {
  const AuctionShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => _share(context),
      icon: const Icon(Icons.share),
      tooltip: 'Share',
    );
  }

  Future<void> _share(BuildContext context) async {
    final cubit = context.read<AuctionCubit>();
    final auctionId = cubit.state.auctionId ?? 0;
    final lotId = cubit.state.selectedLotId;

    final host = _hyphenEncode(cubit.state.auction.valueOrNull?.hostName ?? '');
    final address = _hyphenEncode(
        cubit.state.lot.valueOrNull?.property.address.toString() ?? '');

    final uri = Uri(
      scheme: 'https',
      host: frontendHost,
      pathSegments: [
        'auctions',
        host,
        address,
        auctionId.toString(),
        lotId.toString(),
      ],
    );
    return Share.share(uri.toString());
  }

  String _hyphenEncode(String original) {
    return original
        .replaceAll(RegExp(r'[-\s]'), ' ')
        .replaceAll(RegExp(r'[^ \w]'), '')
        .trim()
        .replaceAll(' ', '-')
        .replaceFirst(RegExp(r'^$'), '-');
  }
}
