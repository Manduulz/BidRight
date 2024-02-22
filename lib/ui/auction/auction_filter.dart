import 'package:bid_right_mobile/ui/shared/br_textformfield.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';

class AuctionFilterScreen extends StatefulWidget {
  const AuctionFilterScreen({Key? key}) : super(key: key);

  @override
  State<AuctionFilterScreen> createState() => _AuctionFilterScreenState();
}

//----------------------------------------------------------------------
class PropType {
  bool isSelectedSingle = false;
  bool isSelectedMulti = false;
  bool isSelectedCondo = false;
  bool isSelectedLand = false;

  PropType(
    this.isSelectedSingle,
    this.isSelectedMulti,
    this.isSelectedCondo,
    this.isSelectedLand,
  );
}
class AssetType {
  bool isSelectedBankOwned = false;
  bool isSelectedBankForeclosure = false;
  bool isSelectedBankShort = false;

  AssetType(
    this.isSelectedBankOwned,
    this.isSelectedBankForeclosure,
    this.isSelectedBankShort,
  );
}
class MoreFilters {
  bool isSelectedGarage = false;
  bool isSelectedBasement = false;
  bool isSelectedPool = false;
  bool isSelectedVacant = false;

  MoreFilters(
    this.isSelectedGarage,
    this.isSelectedBasement,
    this.isSelectedPool,
    this.isSelectedVacant,
  );
}

List<PropType> propTypeList = [
  PropType(false, false, true, false),
];
List<AssetType> assetTypeList = [
  AssetType(false, true, false),
];
List<MoreFilters> moreFiltersList = [
  MoreFilters(false, true, true, false),
];

int? minAmount;
int? maxAmount;
double bedRooms=10.0;
double bathRooms=10.0;
//--------------------------------------------------------------



class _AuctionFilterScreenState extends State<AuctionFilterScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BRColors.bglightBlue,
      appBar: AppBar(
        title: const Text(
          'Auction List - Filters',
          style: TextStyle(fontSize: 14.0),
        ),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(child: Text('Filters', style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),)),
                        ),
                        const Text('Property Type', style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            buildTextButtonSelector(propTypeList.first.isSelectedSingle,'Single Family',
                                    () => setState(() {propTypeList.first.isSelectedSingle = !propTypeList.first.isSelectedSingle; })
                            ),
                            const SizedBox(width: 10.0,),
                            buildTextButtonSelector(propTypeList.first.isSelectedMulti,'Multi Family',
                                    () => setState(() {propTypeList.first.isSelectedMulti = !propTypeList.first.isSelectedMulti;})
                            ),
                        ],
                        ),
                        Row(
                          children: [
                            buildTextButtonSelector(propTypeList.first.isSelectedCondo,'Condos/Townhouse',
                                    () => setState(() {propTypeList.first.isSelectedCondo = !propTypeList.first.isSelectedCondo;})
                            ),
                            const SizedBox(width: 10.0,),
                            buildTextButtonSelector(propTypeList.first.isSelectedLand,'Land Only',
                                    () => setState(() {propTypeList.first.isSelectedLand = !propTypeList.first.isSelectedLand;})
                            ),
                          ],
                        ),
                        const Text('Bedrooms', style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/1.2,
                              child: Slider(
                              value: bedRooms,
                              min: 0,
                              max: 11,
                              divisions: 10,
                              activeColor: BRColors.btGreen,
                              inactiveColor: BRColors.bgLightGray,

                              label: '${bedRooms.round()} Beds',
                              onChanged: (double value) {
                              setState(() {
                              bedRooms = value; });
                              },
                              ),
                            ),
                        const Text('Baths', style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.2,
                          child: Slider(
                            value: bathRooms,
                            min: 0,
                            max: 11,
                            divisions: 10,
                            activeColor: BRColors.btGreen,
                            inactiveColor: BRColors.bgLightGray,
                            label: '${bathRooms.round()} Baths',
                            onChanged: (double value) {
                              setState(() {
                                bathRooms = value; });
                            },
                          ),
                        ),
                        const Text('Square Feet', style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),),
                        const SizedBox( height: 10.0,),
                        Row(
                         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            SizedBox(
                              width: MediaQuery.of(context).size.width/2.5,
                              height: 40.0 ,
                              child: BRTextFormField(
                                labelText: 'Min',
                                keyboardType: TextInputType.number,
                                textCapitalization: TextCapitalization.words,
                                autofillHints: const [AutofillHints.transactionAmount],
                                textInputAction: TextInputAction.next,
                                onChanged: (dynamic value) =>   setState(() => minAmount = value),
                                onSaved: (dynamic value) => minAmount = value,
                                validator: (value) => value!.isEmpty ? "Min SQF is required" : null,
                              ),
                            ),
                            const SizedBox(width: 10.0,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/2.8,
                              height: 40.0 ,
                              child: BRTextFormField(
                                labelText: 'Max',
                                keyboardType: TextInputType.number,
                                textCapitalization: TextCapitalization.words,
                                autofillHints: const [AutofillHints.transactionAmount],
                                textInputAction: TextInputAction.next,
                                onChanged: (dynamic value) =>   setState(() => maxAmount = value),
                                onSaved: (dynamic value) => maxAmount = value,
                                validator: (value) => value!.isEmpty ? "Max SQF is required" : null,
                              ),
                            ),
/*                            Container(
                              width: MediaQuery.of(context).size.width/3.0,
                              height: 40.0 ,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Max',
                                  fillColor: BRColors.bglightBlue,
                                ),
                                onChanged: (dynamic value) =>
                                    setState(() => maxAmount = value),
                                onSaved: (dynamic value) => maxAmount = value,
                                validator: (value) =>
                                value!.isEmpty ? "Required" : null,
                              ),
                            ),*/
                        ],
                        ),
                        const SizedBox( height: 10.0,),
                        const Text('Asset Type', style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),),

                        Row(
                          children: [
                            buildTextButtonSelector( assetTypeList.first.isSelectedBankOwned,'Bank Owned',
                                    () => setState(() {assetTypeList.first.isSelectedBankOwned = !assetTypeList.first.isSelectedBankOwned;})
                            ),
                            const SizedBox(width: 10.0,),
                            buildTextButtonSelector( assetTypeList.first.isSelectedBankForeclosure,'Foreclosure',
                                    () => setState(() {assetTypeList.first.isSelectedBankForeclosure = !assetTypeList.first.isSelectedBankForeclosure;})
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            buildTextButtonSelector( assetTypeList.first.isSelectedBankShort,'Short Sales',
                                    () => setState(() {assetTypeList.first.isSelectedBankShort = !assetTypeList.first.isSelectedBankShort;})
                            ),
                          ],
                        ),
                        const SizedBox( height: 10.0,),
                        const Text('More Filters', style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),),
                        Row(children: [
                          const Text('Must have garages', style: TextStyle(fontSize: 14.0, color: Colors.black,),),
                          const Spacer(),
                             Switch(
                              value: moreFiltersList.first.isSelectedGarage,
                              onChanged: (value) {
                                setState(() {
                                  moreFiltersList.first.isSelectedGarage = value;
                                });
                              },
                              activeTrackColor: BRColors.btGreen,
                              activeColor: BRColors.white,
                            ),

                        ],
                        ),
                        Row(children: [
                          const Text('Has basement', style: TextStyle(fontSize: 14.0, color: Colors.black,),),
                          const Spacer(),
                          Switch(
                            value: moreFiltersList.first.isSelectedBasement,
                            onChanged: (value) {
                              setState(() {
                                moreFiltersList.first.isSelectedBasement = value;
                              });
                            },
                            activeTrackColor: BRColors.btGreen,
                            activeColor: BRColors.white,
                          ),

                        ],
                        ),
                        Row(children: [
                          const Text('Must have pool', style: TextStyle(fontSize: 14.0, color: Colors.black,),),
                          const Spacer(),
                          Switch(
                            value: moreFiltersList.first.isSelectedPool,
                            onChanged: (value) {
                              setState(() {
                                moreFiltersList.first.isSelectedPool = value;
                              });
                            },
                            activeTrackColor: BRColors.btGreen,
                            activeColor: BRColors.white,
                          ),
                        ],
                        ),
                        Row(children: [
                          const Text('Must have pool', style: TextStyle(fontSize: 14.0, color: Colors.black,),),
                          const Spacer(),
                          Switch(
                            value: moreFiltersList.first.isSelectedVacant,
                            onChanged: (value) {
                              setState(() {
                                moreFiltersList.first.isSelectedVacant = value;
                              });
                            },
                            activeTrackColor: BRColors.btGreen,
                            activeColor: BRColors.white,
                          ),

                        ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); //Todo change the routing
                                },
                                child: const Text(
                                  'Reset Filters',
                                  style: TextStyle(
                                      fontSize: 14.0, color: BRColors.btDarkBlue),
                                )),

                            const SizedBox(width: 40.0,),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: BRColors.btGreen,
                              ),
                              child: MaterialButton(
                                onPressed: () {}, //Todo link it
                                child: const Text(
                                  'View Properties',
                                  style: TextStyle(fontSize: 14.0, color: BRColors.white),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

            ),
          ),
        ),
    );
  }

  TextButton buildTextButtonSelector(
      bool selectorCheck, String selectorName, VoidCallback onPressed) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: const Size(150, 25),
        backgroundColor: selectorCheck ? BRColors.btGreen : BRColors.white,
        side: BorderSide(
            color: selectorCheck ? BRColors.btGreen : BRColors.btDarkBlue,
            width: 1),
      ),
      onPressed: onPressed,
      child: Text(selectorName,
          style: TextStyle(
            fontSize: 14.0,
            color: selectorCheck ? BRColors.white : Colors.black,
          )),
    );
  }
}
