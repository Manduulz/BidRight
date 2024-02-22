import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/models/purchase_profile.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/navigation/routes.dart' as routes;
import 'package:bid_right_mobile/ui/purchase_profile/purchase_profiles_bloc.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PurchaseProfileCard extends StatefulWidget {
  final PurchaseProfile profile;

  const PurchaseProfileCard({super.key, required this.profile});

  @override
  State<PurchaseProfileCard> createState() => _PurchaseProfileCardState();
}

class _PurchaseProfileCardState extends State<PurchaseProfileCard> {
  bool isDeleting = false;

  @override
  Widget build(BuildContext context) {
    const labelStyle = TextStyle(
      fontSize: 12.0,
      color: BRColors.trGray,
    );

    const contentStyle = TextStyle(
      fontSize: 14.0,
      color: BRColors.fnligtBlack,
    );

    return SafeArea(
      child: BRCard(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.profile.name,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: BRColors.fnligtBlack,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          if (widget.profile.isPrimary) {
                            Navigator.of(context)
                                .pushNamed(routes.personalInfo);
                          } else {
                            Navigator.of(context).pushNamed(
                                routes.editPurchaseProfile,
                                arguments: widget.profile.id);
                          }
                        },
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                              fontSize: 14.0, color: BRColors.btDarkBlue),
                        )),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Profile type',
                          style: labelStyle,
                        ),
                        Text(
                          widget.profile.type,
                          style: contentStyle,
                        ),
                        const SizedBox(height: 15.0),
                        if (widget.profile.phone != null) ...[
                          const Text(
                            'Phone number',
                            style: labelStyle,
                          ),
                          Text(widget.profile.phone!, style: contentStyle),
                        ],
                      ],
                    ),
                  ),
                  Expanded(
                    child: Builder(builder: (context) {
                      final address = widget.profile.address;
                      if (address == null) return const SizedBox();
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Address',
                            style: labelStyle,
                          ),
                          Text(
                            address.streetLine1,
                            style: contentStyle,
                          ),
                          if (address.streetLine2 != null)
                            Text(
                              address.streetLine2!,
                              style: contentStyle,
                            ),
                          Text(
                            address.cityLine,
                            style: contentStyle,
                          ),
                          if (address.county != null)
                            Text(
                              address.county!,
                              style: contentStyle,
                            ),
                        ],
                      );
                    }),
                  )
                ],
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: widget.profile.isPrimary
                    ? Image.asset(Assets.protected)
                    : isDeleting
                        ? const SizedBox.square(
                            dimension: 24,
                            child: CircularProgressIndicator.adaptive(),
                          )
                        : TextButton(
                            onPressed: _deleteProfile,
                            child: const Text(
                              'Delete',
                              style: TextStyle(
                                  fontSize: 14.0, color: BRColors.btRed),
                            ),
                          ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _deleteProfile() async {
    setState(() {
      isDeleting = true;
    });

    final result = await context
        .read<PurchaseProfileListBloc>()
        .deleteProfile(widget.profile.id);

    setState(() {
      isDeleting = false;
    });

    if (mounted && result is Failure) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.red,
        content: Text('Failed to delete purchase profile'),
      ));
    }
  }
}
