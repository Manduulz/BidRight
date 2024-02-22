import 'dart:math';

import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_cubit.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_state.dart';
import 'package:bid_right_mobile/ui/auction/detail/components/address_label.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class AuctionWinnerScreen extends StatelessWidget {
  final VoidCallback onClose;

  const AuctionWinnerScreen({
    Key? key,
    required this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_) => onClose(),
      child: ColoredBox(
        color: BRColors.bgDarkBlue,
        child: SafeArea(
          child: Column(children: [
            const Align(
                alignment: AlignmentDirectional.centerStart,
                child: CloseButton(color: Colors.white)),
            FractionallySizedBox(
                widthFactor: 0.75,
                child: Image.asset(
                  Assets.logoWhite,
                  fit: BoxFit.contain,
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _WinnerPaper(
                  child: DefaultTextStyle.merge(
                    style: Theme.of(context).textTheme.headlineMedium,
                    child: const _WinnerContent(),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class _WinnerContent extends StatelessWidget {
  const _WinnerContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuctionCubit, AuctionState>(builder: (context, state) {
      final bidState = state.bidState.valueOrNull;
      if (bidState == null) {
        return const SizedBox();
      }

      final winningBid = bidState.winningBid;
      if (winningBid == null) {
        return const SizedBox();
      }

      final properties = state.properties.valueOrNull;

      final isWinner = bidState.bidder?.paddleNumber == winningBid.paddleNumber;

      final nextLotId = state.nextLotId;
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          isWinner ? const Text('You Won!') : const Text('Lot Ended!'),
          Text(NumberFormat.simpleCurrency(name: 'USD')
              .format(winningBid.amount)),
          if (properties != null)
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: properties.length,
                padding: const EdgeInsets.only(top: 4),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Center(
                      child: AuctionWinnerAddressLabel(
                        address: properties[index].address,
                      ),
                    ),
                  );
                },
              ),
            ),
          if (nextLotId != null || true)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () =>
                    context.read<AuctionCubit>().selectLot(nextLotId!),
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(
                    side: BorderSide(color: BRColors.btDarkBlue)
                  ),
                  backgroundColor: const Color(0xffb5cbfd),
                  foregroundColor: BRColors.btDarkBlue,
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Show next lot'),
                    Icon(Icons.arrow_right_alt),
                  ],
                ),
              ),
            ),
        ],
      );
    });
  }
}

class _WinnerPaper extends StatelessWidget {
  const _WinnerPaper({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: CustomPaint(
                size: Size.infinite,
                painter: const _WinnerScreenPainter(),
                child: Center(
                  child: AspectRatio(
                    aspectRatio: 244.186 / 321.207,
                    child: FractionallySizedBox(
                      widthFactor: 0.83,
                      heightFactor: 0.7,
                      alignment: const AlignmentDirectional(.4, .1),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 28, left: 8, right: 8, bottom: 8),
                        child: child,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const AspectRatio(aspectRatio: 2.5)
          ],
        ),
        Positioned.fill(
          child: SvgPicture.asset(
            VectorAssets.auctionScene,
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ),
        ),
      ],
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class _WinnerScreenPainter extends CustomPainter {
  const _WinnerScreenPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final scaleFactor = min(size.width / 244.186, size.height / 321.207);
    canvas.save();
    canvas.translate(size.width / 2, 0);
    canvas.scale(scaleFactor);
    canvas.translate(-130, 0);

    final scaledHeight = size.height / scaleFactor;

    Path backPath = Path()
      ..moveTo(18.521, 0.002)
      ..cubicTo(18.521, 0.009, -11.128, -1.448, 4.6, 88.915)
      ..cubicTo(4.6, 88.915, 15.181, 119.588, 1.824, 139.358)
      ..lineTo(198.452, 139.358)
      ..lineTo(198.452, 0.002)
      ..close();

    Paint backColor = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffafcdfb);
    canvas.drawPath(backPath, backColor);

    Paint shadowPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xff9abcef);
    canvas.drawRect(
        Rect.fromLTRB(30.988, 53.487, 236.273, scaledHeight), shadowPaint);

    Paint pagePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffe9f3fe);
    canvas.drawRect(
        Rect.fromLTRB(37.7, 53.487, 239.534, scaledHeight), pagePaint);

    final upperPagePath = Path()
      ..moveTo(239.536, 53.484)
      ..lineTo(37.699, 53.484)
      ..relativeCubicTo(1.116, -15.263, -0.565, -26.346, -3.261, -34.316)
      ..relativeCubicTo(-5.176, -15.325, -14.1, -19.17, -14.1, -19.17)
      ..relativeLineTo(190.349, 0)
      ..relativeCubicTo(16.247, 0, 28.844, 9.787, 32.273, 22.779)
      ..relativeCubicTo(0.128, 0.489, 0.247, 0.976, 0.35, 1.462)
      ..cubicTo(246.566, 39.105, 239.666, 53.212, 239.536, 53.484)
      ..close();

    canvas.drawPath(upperPagePath, pagePaint);

    final upperShadowPath = Path()
      ..moveTo(239.537, 53.489)
      ..lineTo(37.699, 53.489)
      ..relativeCubicTo(1.116, -15.263, -0.566, -26.346, -3.261, -34.316)
      ..relativeCubicTo(20.626, 3.777, 71.713, 11.826, 126.394, 10.47)
      ..relativeCubicTo(35.375, -0.878, 63.33, -3.245, 82.481, -5.4)
      ..cubicTo(246.569, 39.105, 239.67, 53.212, 239.537, 53.489)
      ..close();

    final upperShadowPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffd8e8fd);

    canvas.drawPath(upperShadowPath, upperShadowPaint);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
