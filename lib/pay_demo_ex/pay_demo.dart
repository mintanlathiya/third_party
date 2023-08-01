import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
import 'package:third_party/pay_demo_ex/payment_config.dart';

class PaySampleApp extends StatefulWidget {
  const PaySampleApp({Key? key}) : super(key: key);

  @override
  _PaySampleAppState createState() => _PaySampleAppState();
}

class _PaySampleAppState extends State<PaySampleApp> {
  // final _paymentItems = [
  //   const PaymentItem(
  //     label: 'Total',
  //     amount: '99.99',
  //     status: PaymentItemStatus.final_price,
  //   )
  // ];

  // late final Future<PaymentConfiguration> _googlePayConfigFuture;

  // @override
  // void initState() {
  //   super.initState();
  //   _googlePayConfigFuture =
  //       PaymentConfiguration.fromAsset('default_google_pay_config.json');
  // }

  // void onGooglePayResult(paymentResult) {
  //   debugPrint(paymentResult.toString());
  // }

  // void onApplePayResult(paymentResult) {
  //   debugPrint(paymentResult.toString());
  // }

  String os = Platform.operatingSystem;

  var applePayButton = ApplePayButton(
    paymentConfiguration: PaymentConfiguration.fromJsonString(defaultApplePay),
    paymentItems: const [
      PaymentItem(
        label: 'Item A',
        amount: '0.01',
        status: PaymentItemStatus.final_price,
      ),
      PaymentItem(
        label: 'Item B',
        amount: '0.01',
        status: PaymentItemStatus.final_price,
      ),
      PaymentItem(
        label: 'Total',
        amount: '0.02',
        status: PaymentItemStatus.final_price,
      )
    ],
    style: ApplePayButtonStyle.black,
    width: double.infinity,
    height: 50,
    type: ApplePayButtonType.buy,
    margin: const EdgeInsets.only(top: 15.0),
    onPaymentResult: (result) => debugPrint('Payment Result $result'),
    loadingIndicator: const Center(
      child: CircularProgressIndicator(),
    ),
  );

  var googlePayButton = GooglePayButton(
    paymentConfiguration: PaymentConfiguration.fromJsonString(defaultGooglePay),
    paymentItems: const [
      PaymentItem(
        label: 'Total',
        amount: '0.01',
        status: PaymentItemStatus.final_price,
      )
    ],
    type: GooglePayButtonType.pay,
    margin: const EdgeInsets.only(top: 15.0),
    onPaymentResult: (result) => debugPrint('Payment Result $result'),
    loadingIndicator: const Center(
      child: CircularProgressIndicator(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('T-shirt Shop'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(child: Platform.isIOS ? applePayButton : googlePayButton),
      ),

      // body: ListView(
      //   padding: const EdgeInsets.symmetric(horizontal: 20),
      //   children: [
      //     Container(
      //       margin: const EdgeInsets.symmetric(vertical: 20),
      //       child: const Image(
      //         image: AssetImage('assets/images/34.jpeg'),
      //         height: 350,
      //       ),
      //     ),
      //     const Text(
      //       'Amanda\'s Polo Shirt',
      //       style: TextStyle(
      //         fontSize: 20,
      //         color: Color(0xff333333),
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     const SizedBox(height: 5),
      //     const Text(
      //       '\$50.20',
      //       style: TextStyle(
      //         color: Color(0xff777777),
      //         fontSize: 15,
      //       ),
      //     ),
      //     const SizedBox(height: 15),
      //     const Text(
      //       'Description',
      //       style: TextStyle(
      //         fontSize: 15,
      //         color: Color(0xff333333),
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     const SizedBox(height: 5),
      //     const Text(
      //       'A versatile full-zip that you can wear all day long and even...',
      //       style: TextStyle(
      //         color: Color(0xff777777),
      //         fontSize: 15,
      //       ),
      //     ),
      //     // Example pay button configured using an asset
      //     FutureBuilder<PaymentConfiguration>(
      //         future: _googlePayConfigFuture,
      //         builder: (context, snapshot) => snapshot.hasData
      //             ? GooglePayButton(
      //                 paymentConfiguration: snapshot.data!,
      //                 paymentItems: _paymentItems,
      //                 type: GooglePayButtonType.buy,
      //                 margin: const EdgeInsets.only(top: 15.0),
      //                 onPaymentResult: onGooglePayResult,
      //                 loadingIndicator: const Center(
      //                   child: CircularProgressIndicator(),
      //                 ),
      //               )
      //             : const SizedBox.shrink()),
      // Example pay button configured using a string
      // ApplePayButton(
      //   paymentConfiguration: PaymentConfiguration.fromJsonString(
      //       payment_configurations.defaultApplePay),
      //   paymentItems: _paymentItems,
      //   style: ApplePayButtonStyle.black,
      //   type: ApplePayButtonType.buy,
      //   margin: const EdgeInsets.only(top: 15.0),
      //   onPaymentResult: onApplePayResult,
      //   loadingIndicator: const Center(
      //     child: CircularProgressIndicator(),
      //   ),
      // ),
      // const SizedBox(height: 15)
      // ],
      //),
    );
  }
}
