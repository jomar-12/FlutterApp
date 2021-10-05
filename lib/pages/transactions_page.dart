import 'package:demoproject/CustomWidgets/chip_category.dart';
import 'package:demoproject/CustomWidgets/chip_list.dart';
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
    List<Map> categories = [
      {'name': 'Men', 'isActive': true},
      {'name': 'Woman', 'isActive': false},
      {'name': 'Kids', 'isActive': false},
      {'name': 'Animals', 'isActive': false},
      {'name': 'Food', 'isActive': false},
      {'name': 'Flowers', 'isActive': false},
      {'name': 'Cars', 'isActive': false},
      {'name': 'Boats', 'isActive': false},
      {'name': 'Planes', 'isActive': false},
      {'name': 'Restaurants', 'isActive': false}
    ];

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
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              flex: 1,
              child: ChipList(categories: categories),
            ),
            Expanded(
              flex: 9,
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 30),
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
