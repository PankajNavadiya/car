import 'package:flutter/material.dart';
import 'package:flutter_credit_card/constants.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../../utility.dart';

class Walletytility extends StatelessWidget {
  const Walletytility({super.key});

  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;
    return CreditCardWidget(
      padding: AppConstants.creditCardAspectRatio,
      cardNumber: '1234567891011121',
      expiryDate: '10/25',
      cardHolderName: 'Pankaj Navadiya',
      cvvCode: '111',
      obscureCardCvv: true,
      isHolderNameVisible: true,
      isChipVisible: false,
      showBackView: false, 
      // ignore: non_constant_identifier_names
      onCreditCardWidgetChange: (CreditCardBrand ) {  }, //true when you want to show cvv(back) view
      bankName: 'ICICI Bank',
      cardBgColor: titlecolor.withOpacity(0.9),
      cardType: CardType.visa,
    );
  }
}