import 'package:demoproject/Models/Transaction.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionCard({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.2,
            blurRadius: 8,
            offset: const Offset(0, 3))
      ], borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: CircleAvatar(
              backgroundImage: NetworkImage(transaction.imagePath),
              radius: 30,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.description,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  transaction.timeAgo,
                  style: TextStyle(fontSize: 13, color: Colors.grey[800]),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  transaction.amount,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  transaction.status,
                  style: TextStyle(
                      fontSize: 12,
                      color: transaction.statusColor,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
