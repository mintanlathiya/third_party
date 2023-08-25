import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RaZorPayDemoUi extends StatefulWidget {
  const RaZorPayDemoUi({super.key});

  @override
  State<RaZorPayDemoUi> createState() => _RaZorPayDemoUiState();
}

class _RaZorPayDemoUiState extends State<RaZorPayDemoUi> {
  final _rezorpay = Razorpay();
  var options = {
    'key': 'rzp_test_GiBKBlbxyhNmmS',
    'amount': 100,
    'name': 'Acme Corp.',
    'description': 'Fine T-Shirt',
    'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'}
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            _rezorpay.open(options);
            _rezorpay.on(Razorpay.EVENT_PAYMENT_ERROR, paymentfailed);
            _rezorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, paymentsuccess);
          },
          child: const Text('Pay'),
        ),
      ),
    );
  }

  void paymentfailed(PaymentFailureResponse response) {
    log('${response.message}');
    log('${response.code}');
    log('${response.error}');
  }

  void paymentsuccess(PaymentSuccessResponse response) {
    log('${response.signature}');
    log('${response.paymentId}');
    log('${response.orderId}');
  }
}
