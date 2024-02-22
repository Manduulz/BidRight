import 'package:bid_right_mobile/models/purchase_profile.dart';
import 'package:bid_right_mobile/ui/purchase_profile/components/purchase_profile_card.dart';
import 'package:bid_right_mobile/ui/purchase_profile/purchase_profiles_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/navigation/routes.dart' as routes;
import 'package:provider/provider.dart';

class PurchaseProfilesScreen extends StatefulWidget {
  const PurchaseProfilesScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseProfilesScreen> createState() => _PurchaseProfilesScreenState();
}

class _PurchaseProfilesScreenState extends State<PurchaseProfilesScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PurchaseProfileListBloc>().loadProfiles();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<PurchaseProfileListBloc>();

    return Scaffold(
      backgroundColor: BRColors.bglightBlue,
      appBar: AppBar(
        title: const Text('Purchase Profiles'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'This will be the information entered on the deed when you win an auction.',
                style: TextStyle(fontSize: 14.0, color: BRColors.trGray),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: RefreshIndicator(
                    onRefresh: bloc.loadProfiles,
                    child: StreamBuilder<List<PurchaseProfile>>(
                        stream: bloc.profiles,
                        initialData: bloc.profiles.valueOrNull,
                        builder: (context, snapshot) {
                          final profiles = snapshot.data;
                          if (profiles == null) {
                            return const CustomScrollView(
                              physics: AlwaysScrollableScrollPhysics(),
                              slivers: [
                                SliverFillRemaining(
                                  child: Center(
                                    child: CircularProgressIndicator.adaptive(),
                                  ),
                                )
                              ],
                            );
                          } else {
                            return ListView.builder(
                              itemCount: profiles.length,
                              itemBuilder: (BuildContext context, int index) {
                                var profile = profiles[index];
                                return PurchaseProfileCard(
                                  key: ValueKey(profile.id),
                                  profile: profile,
                                );
                              },
                            );
                          }
                        }),
                  ),
                ),
              ),
              OutlinedButton(
                child: const Text(
                  '+ Add Purchase Profile',
                  style: TextStyle(fontSize: 14.0, color: BRColors.btDarkBlue),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(routes.addPurchaseProfile);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
