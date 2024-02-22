import 'dart:async';
import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/navigation/routes.dart' as routes;
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/ui/shared/br_textformfield.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:collection/collection.dart';
import 'package:email_validator/email_validator.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

//-------------------------------

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();
  String? yourName;
  String? companyName;
  String? phone;
  String? email;
  String? message;

  final _phoneController = MaskedTextController(mask: '(000) 000-0000');

  @override
  void initState() {
    super.initState();
    final bidder = context.read<AccountRepository?>()?.bidderDetail.valueOrNull;
    if (bidder != null) {
      yourName = bidder.name;
      email = bidder.personalInfo.email;
      phone = bidder.phones.singleWhereOrNull((element) => element.isPrimary)?.number;
      if (phone != null) {
        _phoneController.text = phone!;
      }
    }
  }

  // final phoneFormatter = MaskTextInputFormatter(mask: "(###) ###-####", filter: { "#": RegExp(r'[0-9]') });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BRColors.bglightBlue,
      appBar: AppBar(
        title: const Text(
          'Contact Us',
          style: TextStyle(fontSize: 14.0, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          physics: const ScrollPhysics(),
          children: <Widget>[
            BRCard(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: AutofillGroup(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          BRTextFormField(
                            labelText: 'Your name',
                            initialValue: yourName,
                            keyboardType: TextInputType.name,
                            textCapitalization: TextCapitalization.words,
                            autofillHints: const [AutofillHints.givenName],
                            textInputAction: TextInputAction.next,
                            onChanged: (value) =>
                                setState(() => yourName = value),
                            validator: (value) =>
                                value!.isEmpty ? "Required" : null,
                          ),
                          const SizedBox(height: 10),
                          BRTextFormField(
                            labelText: 'Your email',
                            initialValue: email,
                            keyboardType: TextInputType.emailAddress,
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(
                                  RegExp(r"\s\b|\b\s"))
                            ],
                            textInputAction: TextInputAction.next,
                            validator: (value) => !EmailValidator.validate(
                                    value!)
                                ? 'Invalid email address.'
                                : null,
                            onSaved: (value) => email = value,
                          ),
                          const SizedBox(height: 10),
                          BRTextFormField(
                            labelText: 'Contact phone number',
                            controller: _phoneController,
                            keyboardType: TextInputType.number,
                            autofillHints: const [
                              AutofillHints.telephoneNumberNational
                            ],
                            textInputAction: TextInputAction.done,
                            onChanged: (value) => setState(() => phone = value),
                            onSaved: (value) => phone = value,
                            validator: (value) =>
                                value!.isEmpty ? "Required" : null,
                          ),
                          const SizedBox(height: 10),
                          BRTextFormField(
                            labelText: 'Company name',
                            initialValue: companyName,
                            keyboardType: TextInputType.name,
                            textCapitalization: TextCapitalization.words,
                            autofillHints: const [AutofillHints.familyName],
                            textInputAction: TextInputAction.next,
                            onChanged: (value) =>
                                setState(() => companyName = value),
                            onSaved: (value) => companyName = value,
                            validator: (value) =>
                                value!.isEmpty ? "Required" : null,
                          ),
                          const SizedBox(height: 10),
                          BRTextFormField(
                            maxLines: 10,
                            initialValue: message,
                            labelText: 'Message',
                            keyboardType: TextInputType.name,
                            textCapitalization: TextCapitalization.words,
                            autofillHints: const [AutofillHints.familyName],
                            textInputAction: TextInputAction.next,
                            onChanged: (value) =>
                                setState(() => message = value),
                            onSaved: (value) => message = value,
                            validator: (value) =>
                                value!.isEmpty ? "Required" : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: BRColors.btGreen,
              ),
              child: MaterialButton(
                onPressed: () {
                  _contactUs();
                },
                child: const Text(
                  "Send message",
                  style: TextStyle(fontSize: 14.0, color: BRColors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _contactUs() async {
    if (!mounted) return;

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const ThankYouContact()));
  }
}

class ThankYouContact extends StatelessWidget {
  const ThankYouContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BRColors.bglightBlue,
      appBar: AppBar(
        title: const Text(
          'Contact Us',
          style: TextStyle(fontSize: 14.0, color: Colors.white),
        ),
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (_) => Navigator.of(context)
            .popUntil(ModalRoute.withName(routes.dashboard)),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  //width: 400.0,
                  height: 300.0,
                  child: BRCard(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            // width: 146.0,
                            // height: 90.0,
                            child: SvgPicture.asset(
                              VectorAssets.mail,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "Thank you for contacting us!  ",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Text(
                            "We will get back to you soon!",
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: BRColors.btGreen,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .popUntil(ModalRoute.withName(routes.dashboard));
                    },
                    child: const Text(
                      "Back to Home",
                      style: TextStyle(fontSize: 14.0, color: BRColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
