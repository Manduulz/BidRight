import 'package:bid_right_mobile/ui/account/personal_info/personal_info_cubit.dart';
import 'package:bid_right_mobile/ui/shared/address_input/address_input.dart';
import 'package:bid_right_mobile/ui/shared/br_textformfield.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:collection/collection.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PersonalInfoSection extends StatefulWidget {
  const PersonalInfoSection({Key? key}) : super(key: key);

  @override
  State<PersonalInfoSection> createState() => _PersonalInfoSectionState();
}

class _PersonalInfoSectionState extends State<PersonalInfoSection> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PersonalInfoCubit>();
    final personalInfo = cubit.state.newProfile!.personalInfo;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            alignment: AlignmentDirectional.centerStart,
            child: const Text(
              "Personal Information",
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ),
          BRCard(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BRTextFormField(
                    labelText: ' First name',
                    initialValue: personalInfo.firstName,
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    autofillHints: const [AutofillHints.givenName],
                    textInputAction: TextInputAction.next,
                    onChanged: cubit.setFirstName,
                    validator: (value) =>
                        value!.isEmpty ? "First name is required" : null,
                  ),
                  const SizedBox(height: 10),
                  BRTextFormField(
                    labelText: ' Last name',
                    initialValue: personalInfo.lastName,
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    autofillHints: const [AutofillHints.familyName],
                    textInputAction: TextInputAction.next,
                    onChanged: cubit.setLastName,
                    validator: (value) =>
                        value!.isEmpty ? "Last name is required" : null,
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () => _updateDateOfBirth(personalInfo.birthDate),
                    child: InputDecorator(
                      decoration: filledInputDecoration.copyWith(
                          labelText: 'Birth date'),
                      child: Text(
                        DateFormat.yMMMd().format(personalInfo.birthDate),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  BRTextFormField(
                    labelText: ' Email address',
                    initialValue: personalInfo.email,
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: const [],
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                    ],
                    textInputAction: TextInputAction.next,
                    validator: (value) => !EmailValidator.validate(value!, true)
                        ? 'Invalid email address.'
                        : null,
                    onChanged: cubit.setEmail,
                  ),
                  const SizedBox(height: 20),
                  // NOTE: Tem: Does it need to be updating the bloc? - shouldn't it be local?
                  InputDecorator(
                    decoration:
                        filledInputDecoration.copyWith(labelText: 'Username'),
                    child: Text(
                      cubit.state.newProfile!.userName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //------------------------------------//
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            alignment: AlignmentDirectional.centerStart,
            child: const Text(
              "Mailing Address",
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ),
          BRCard(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: AddressSection(
                address: personalInfo.address,
                delegate: cubit,
              ),
            ),
          ),
          OutlinedButton(
            onPressed: cubit.state.isSaving ? null : _saveUpdates,
            child: const Text('Save changes'),
          ),
        ],
      ),
    );
  }

  Future<void> _saveUpdates() async {
    if (_formKey.currentState?.validate() != true) {
      return;
    }

    final result = await context.read<PersonalInfoCubit>().saveUpdates();
    if (!mounted) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(result.join(
      onSuccess: (_) => const SnackBar(content: Text('Saved')),
      onFailure: (error) {
        final message = (error is String) ? error : 'Error';
        return SnackBar(content: Text(message), backgroundColor: Colors.red);
      },
    ));
  }

  Future<void> _updateDateOfBirth(DateTime initialDate) async {
    final result = await showDatePicker(
        context: context,
        firstDate: [DateTime.utc(1900), initialDate].min,
        lastDate: [DateTime.now(), initialDate].max,
        initialDate: initialDate);

    if (result != null && mounted) {
      context.read<PersonalInfoCubit>().setBirthDate(result);
    }
  }
}
