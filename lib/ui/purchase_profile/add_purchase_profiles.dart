import 'package:bid_right_mobile/models/address.dart';
import 'package:bid_right_mobile/models/purchase_profile.dart';
import 'package:bid_right_mobile/ui/purchase_profile/purchase_profile_edit_bloc.dart';
import 'package:bid_right_mobile/ui/shared/br_textformfield.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditPurchaseProfileScreen extends StatefulWidget {
  final PurchaseProfile? initialProfile;

  const EditPurchaseProfileScreen({Key? key, this.initialProfile})
      : super(key: key);

  @override
  State<EditPurchaseProfileScreen> createState() =>
      _EditPurchaseProfileScreenState();
}

class _EditPurchaseProfileScreenState extends State<EditPurchaseProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  String? granteeName;
  String? contactName;
  String? phone;
  String? address1;
  String? address2;
  String? cityName;
  String? stateName;
  String? zipCode;
  String formData = '';
  String? dropdownValue;
  bool isAddressSame = false;
  bool isAgent = false;

  final phoneController = MaskedTextController(mask: '(000) 000-0000');

  static const List<String> entityTypes = [
    'Individual',
    'Corporation',
  ];

  String? entityType;

  //-------------------
  @override
  void initState() {
    super.initState();
    final profile = widget.initialProfile;
    if (profile != null) {
      granteeName = profile.name;
      entityType = profile.type;
      contactName = profile.name;
      phone = profile.phone;
      phoneController.text = phone ?? '';

      address1 = profile.address?.streetLine1;
      address2 = profile.address?.streetLine2;
      cityName = profile.address?.city;
      stateName = profile.address?.stateCode;
      zipCode = profile.address?.zip;
    }
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BRColors.bglightBlue,
      appBar: AppBar(
        title: const Text(
          'Add Purchase Profile',
          style: TextStyle(fontSize: 14.0, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'Profile information',
                            style: TextStyle(
                                fontSize: 14.0, color: BRColors.fnligtBlack),
                          ),
                        ),
                        BRCard(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: BRTextFormField(
                                    labelText: 'Name of grantee on deed',
                                    initialValue: granteeName,
                                    keyboardType: TextInputType.name,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    textInputAction: TextInputAction.next,
                                    onSaved: (value) => granteeName = value,
                                    validator: (value) =>
                                        value!.isEmpty ? "Required" : null,
                                  ),
                                ),
                                DropdownButtonFormField<String>(
                                  items: entityTypes
                                      .map((e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e),
                                          ))
                                      .toList(),
                                  value: entityType,
                                  decoration: entityType == null
                                      ? const InputDecoration(
                                          labelText: 'Entity Type')
                                      : filledInputDecoration.copyWith(
                                          labelText: 'Entity Type'),
                                  onChanged: (value) =>
                                      setState(() => entityType = value),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'Contact information',
                            style: TextStyle(
                                fontSize: 14.0, color: BRColors.fnligtBlack),
                          ),
                        ),
                        _buildContactInfoCard(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _saveChanges,
                  child: const Text(
                    "Save Changes",
                    style: TextStyle(fontSize: 14.0, color: BRColors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfoCard() {
    final isIndividual = entityType == 'Individual';
    return BRCard(
      child: AnimatedSize(
        alignment: Alignment.topCenter,
        duration: const Duration(milliseconds: 200),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AutofillGroup(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AnimatedCrossFade(
                  duration: const Duration(milliseconds: 200),
                  crossFadeState: isIndividual
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  firstChild: const SizedBox(width: double.infinity),
                  secondChild: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: BRTextFormField(
                      labelText: 'Contact Person',
                      initialValue: contactName,
                      keyboardType: TextInputType.name,
                      textCapitalization: TextCapitalization.words,
                      textInputAction: TextInputAction.next,
                      autofillHints: const [AutofillHints.name],
                      onSaved: (value) => contactName = value,
                      validator: (value) =>
                          !isIndividual && value!.isEmpty ? "Required" : null,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => setState(() => isAddressSame = !isAddressSame),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        // fillColor:  BRColors.btGreen,
                        value: isAddressSame,
                        onChanged: (bool? value) {
                          setState(() {
                            isAddressSame = value!;
                          });
                        },
                      ),
                      const Flexible(
                        child: Text(
                          'Address is same as bidder.',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => setState(() => isAgent = !isAgent),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        // fillColor:  BRColors.btGreen,
                        value: isAgent,
                        onChanged: (bool? value) {
                          setState(() {
                            isAgent = value!;
                          });
                        },
                      ),
                      const Flexible(
                        child: Text(
                          'Agent for Bidder',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BRTextFormField(
                    labelText: 'Phone',

                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    autofillHints: const [
                      AutofillHints.telephoneNumberNational
                    ],
                    textInputAction: TextInputAction.done,
                    onChanged: (value) => setState(() => phone = value),
                    onSaved: (value) => phone = value,
                    validator: (value) =>
                        value!.replaceAll(RegExp(r'\D'), '').length < 10
                            ? "Required"
                            : null,
                  ),
                ),
                if (!isAddressSame) ...[
                  const Text(
                    'Contact Person - Address',
                    style:
                        TextStyle(fontSize: 14.0, color: BRColors.fnligtBlack),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: BRTextFormField(
                      labelText: 'Address 1',
                      initialValue: address1,
                      keyboardType: TextInputType.name,
                      textCapitalization: TextCapitalization.words,
                      autofillHints: const [AutofillHints.addressCity],
                      textInputAction: TextInputAction.next,
                      onChanged: (value) => setState(() => address1 = value),
                      onSaved: (value) => address1 = value,
                      validator: (value) => value!.isEmpty ? "Required" : null,
                    ),
                  ),
                  //   SizedBox( width: MediaQuery.of(context).size.width/1.1,
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: BRTextFormField(
                            labelText: 'Address 2',
                            initialValue: address2,
                            keyboardType: TextInputType.name,
                            textCapitalization: TextCapitalization.words,
                            autofillHints: const [AutofillHints.addressCity],
                            textInputAction: TextInputAction.next,
                            onChanged: (value) =>
                                setState(() => address2 = value),
                            onSaved: (value) => address2 = value,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: BRTextFormField(
                            labelText: 'City',
                            initialValue: cityName,
                            keyboardType: TextInputType.name,
                            textCapitalization: TextCapitalization.words,
                            autofillHints: const [AutofillHints.addressCity],
                            textInputAction: TextInputAction.next,
                            onChanged: (value) =>
                                setState(() => cityName = value),
                            onSaved: (value) => cityName = value,
                            validator: (value) =>
                                value!.isEmpty ? "Required" : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: BRTextFormField(
                            labelText: 'State',
                            initialValue: stateName,
                            keyboardType: TextInputType.name,
                            textCapitalization: TextCapitalization.words,
                            autofillHints: const [AutofillHints.addressState],
                            textInputAction: TextInputAction.next,
                            onChanged: (value) =>
                                setState(() => stateName = value),
                            onSaved: (value) => stateName = value,
                            validator: (value) =>
                                value!.isEmpty ? "Required" : null,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: BRTextFormField(
                            labelText: 'Zip Code',
                            initialValue: zipCode,
                            keyboardType: TextInputType.name,
                            textCapitalization: TextCapitalization.words,
                            autofillHints: const [AutofillHints.postalCode],
                            textInputAction: TextInputAction.next,
                            onChanged: (value) =>
                                setState(() => zipCode = value),
                            onSaved: (value) => zipCode = value,
                            validator: (value) =>
                                value!.isEmpty ? "Required" : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _saveChanges() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    _formKey.currentState!.save();

    final bloc = context.read<EditPurchaseProfileBloc>();

    final profile = PurchaseProfile(
        id: bloc.profileId ?? -1,
        type: entityType!,
        name: granteeName!,
        contactName: entityType == 'Individual' ? granteeName! : contactName!,
        isPrimary: false,
        phone: phone ?? '',
        isAgent: isAgent,
        address: isAddressSame
            ? null
            : Address(
                streetLine1: address1!,
                streetLine2: address2,
                city: cityName!,
                stateCode: stateName!,
                zip: zipCode!,
              ));

    final success =
        await context.read<EditPurchaseProfileBloc>().saveProfile(profile);

    if (success && mounted) {
      Navigator.pop(context);
    }
  }
}

class UpdatePurchaseProfileScreen extends StatefulWidget {
  const UpdatePurchaseProfileScreen({Key? key}) : super(key: key);

  @override
  State<UpdatePurchaseProfileScreen> createState() =>
      _UpdatePurchaseProfileScreenState();
}

class _UpdatePurchaseProfileScreenState
    extends State<UpdatePurchaseProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PurchaseProfile>(
      future: context.watch<EditPurchaseProfileBloc>().initialProfile,
      builder: (context, snapshot) {
        return snapshot.hasData
            ? EditPurchaseProfileScreen(initialProfile: snapshot.data)
            : const Center(child: CircularProgressIndicator.adaptive());
      },
    );
  }
}
