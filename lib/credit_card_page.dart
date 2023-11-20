import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardPage extends StatefulWidget {
  const CreditCardPage({Key? key}) : super(key: key);

  @override
  State<CreditCardPage> createState() => _CreditCardPageState();
}

class _CreditCardPageState extends State<CreditCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("credit card"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: "12545",
              expiryDate: "12/54/55",
              cardHolderName: "mosayem",
              cvvCode: "225",
              showBackView: false,
              onCreditCardWidgetChange: (CreditCardBrand) {
                var a = 5;
              }, //true when you want to show cvv(back) view
            ),



            CreditCardWidget(
              cardNumber: "1234 5678 9123 5689",
              expiryDate: "12/54/55",
              cardHolderName: "MOSAYEB MASOUMI",
              cvvCode: "225",
              showBackView: false,
              // cardBgColor: Colors.green,
              // glassmorphismConfig: Glassmorphism.defaultConfig(),

              // glassmorphismConfig: Glassmorphism(
              //   blurX: 10.0,
              //   blurY: 10.0,
              //   gradient: LinearGradient(
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomRight,
              //     colors: <Color>[
              //       Colors.grey.withAlpha(20),
              //       Colors.white.withAlpha(20),
              //     ],
              //     stops: const <double>[
              //       0.3,
              //       0,
              //     ],
              //   ),
              // ),

              backgroundImage: 'assets/images/card_bg.jpg',
              obscureCardNumber: false,
              obscureCardCvv: true,
              isHolderNameVisible: true,
              height: 175,
              // textStyle: TextStyle(color: Colors.yellowAccent),
              width: MediaQuery.of(context).size.width,
              isChipVisible: true,
              isSwipeGestureEnabled: true,
              animationDuration: Duration(milliseconds: 500),
              bankName: "Saman Bank",
               chipColor: Colors.yellow,
               labelCardHolder: "label card holder",
               labelExpiredDate: "label expired card",

              // cardType: CardType.mastercard,

              // customCardIcons: <CustomCardTypeImage>[
              //   CustomCardTypeImage(
              //     cardType: CardType.mastercard,
              //     cardImage: Image.asset(
              //       'assets/mastercard.png',
              //       height: 48,
              //       width: 48,
              //     ),
              //   ),
              // ],

              // customCardTypeIcons: <CustomCardTypeIcon>[
              //   CustomCardTypeIcon(
              //     cardType: CardType.mastercard,
              //     cardImage: Image.asset(
              //       'assets/mastercard.png',
              //       height: 48,
              //       width: 48,
              //     ),
              //   ),
              // ],

              onCreditCardWidgetChange: (CreditCardBrand) {
                var a = 5;
              },
            ),



            // CreditCardForm(
            //   formKey: formKey, // Required
            //   cardNumberKey: cardNumberKey,
            //   cvvCodeKey: cvvCodeKey,
            //   expiryDateKey: expiryDateKey,
            //   cardHolderKey: cardHolderKey,
            //   onCreditCardModelChange: (CreditCardModel data) {}, // Required
            //   themeColor: Colors.red,
            //   obscureCvv: true,
            //   obscureNumber: true,
            //   isHolderNameVisible: false,
            //   isCardNumberVisible: false,
            //   isExpiryDateVisible: false,
            //   cardNumberValidator: (String? cardNumber){},
            //   expiryDateValidator: (String? expiryDate){},
            //   cvvValidator: (String? cvv){},
            //   cardHolderValidator: (String? cardHolderName){},
            //   onFormComplete: () {
            //     // callback to execute at the end of filling card data
            //   },
            //   cardNumberDecoration: const InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Number',
            //     hintText: 'XXXX XXXX XXXX XXXX',
            //   ),
            //   expiryDateDecoration: const InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Expired Date',
            //     hintText: 'XX/XX',
            //   ),
            //   cvvCodeDecoration: const InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'CVV',
            //     hintText: 'XXX',
            //   ),
            //   cardHolderDecoration: const InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Card Holder',
            //   ),
            // ),


          ],
        ),
      ),
    );
  }
}
