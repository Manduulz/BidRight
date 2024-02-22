import 'package:bid_right_mobile/models/address.dart';
import 'package:bid_right_mobile/ui/shared/address_input/address_input_delegate.dart';
import 'package:bid_right_mobile/ui/shared/br_textformfield.dart';
import 'package:flutter/material.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({
    super.key,
    required this.address,
    required this.delegate,
  });

  final Address address;
  final AddressInputDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BRTextFormField(
          labelText: 'Street address',
          initialValue: address.streetLine1,
          keyboardType: TextInputType.streetAddress,
          textCapitalization: TextCapitalization.words,
          autofillHints: const [AutofillHints.streetAddressLevel1],
          textInputAction: TextInputAction.next,
          onChanged: delegate.setAddress1,
          validator: (value) =>
          value!.isEmpty ? "Street address is required" : null,
        ),
        const SizedBox(height: 10),
        BRTextFormField(
          labelText: 'Address 2 (Suite/Apt)',
          initialValue: address.streetLine2,
          keyboardType: TextInputType.streetAddress,
          textCapitalization: TextCapitalization.words,
          autofillHints: const [AutofillHints.streetAddressLevel2],
          textInputAction: TextInputAction.next,
          onChanged: delegate.setAddress2,
        ),
        const SizedBox(height: 10),
        BRTextFormField(
          labelText: 'Zip code',
          initialValue: address.zip,
          keyboardType: TextInputType.streetAddress,
          textCapitalization: TextCapitalization.words,
          autofillHints: const [AutofillHints.postalCode],
          textInputAction: TextInputAction.next,
          onChanged: delegate.setZip,
          validator: (value) =>
          value!.isEmpty ? "Zip code is required" : null,
        ),
        const SizedBox(height: 10),
        BRTextFormField(
          labelText: 'City',
          initialValue: address.city,
          keyboardType: TextInputType.streetAddress,
          textCapitalization: TextCapitalization.words,
          autofillHints: const [AutofillHints.addressCity],
          textInputAction: TextInputAction.next,
          onChanged: delegate.setCity,
          validator: (value) =>
          value!.isEmpty ? "City name is required" : null,
        ),
        const SizedBox(height: 10),
        BRTextFormField(
          labelText: 'State',
          initialValue: address.stateCode,
          keyboardType: TextInputType.streetAddress,
          textCapitalization: TextCapitalization.words,
          autofillHints: const [AutofillHints.addressState],
          textInputAction: TextInputAction.next,
          onChanged: delegate.setStateCode,
          validator: (value) =>
          value!.isEmpty ? "State name is required" : null,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
