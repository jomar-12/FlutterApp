import 'package:demoproject/CustomWidgets/transaction_card.dart';
import 'package:demoproject/Models/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(77, 2, 225, 1)));

    List<Transaction> transactions = Transaction.getTransactions();

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(77, 2, 225, 1),
                      Color.fromRGBO(172, 84, 249, 1),
                    ],
                  )),
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                    const Text(
                      'Transactions',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: transactions.length,
                itemBuilder: (_, index) {
                  return TransactionCard(transaction: transactions[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
