import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  final double totalAmount;

  const CheckoutScreen({Key? key, required this.totalAmount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إتمام الطلب'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'إجمالي المبلغ: \$${totalAmount.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // هنا يتم تنفيذ عملية الدفع أو إرسال الطلب
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('تم إرسال الطلب بنجاح')),
                );
              },
              child: Text('إرسال الطلب'),
            ),
          ],
        ),
      ),
    );
  }
}
