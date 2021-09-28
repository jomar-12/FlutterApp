// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transaction {
  late String imagePath;
  late String description;
  late String timeAgo;
  late String amount;
  late String status;
  late Color? statusColor = (status == 'SUCCESS')
      ? Colors.green[500]
      : (status == 'FAILED')
          ? Colors.red[600]
          : Colors.orange[800];

  Transaction(
      {required this.imagePath,
      required this.description,
      required this.timeAgo,
      required this.amount,
      required this.status});

  static List<Transaction> getTransactions() {
    List<Transaction> transactions = [
      Transaction(
          imagePath: 'https://randomuser.me/api/portraits/men/22.jpg',
          description: 'Paid to Victoria',
          timeAgo: '1 day ago',
          amount: '\$200',
          status: 'SUCCESS'),
      Transaction(
          imagePath: 'https://randomuser.me/api/portraits/men/32.jpg',
          description: 'Mobile Recharges',
          timeAgo: '1 week ago',
          amount: '\$45',
          status: 'PENDING'),
      Transaction(
          imagePath: 'https://randomuser.me/api/portraits/men/23.jpg',
          description: 'Electricity Bill',
          timeAgo: '8 day ago',
          amount: '\$200',
          status: 'SUCCESS'),
      Transaction(
          imagePath: 'https://randomuser.me/api/portraits/men/25.jpg',
          description: 'Paid to Thomas',
          timeAgo: '2 week ago',
          amount: '\$142',
          status: 'FAILED'),
      Transaction(
          imagePath: 'https://randomuser.me/api/portraits/men/26.jpg',
          description: 'Paid to Eliza',
          timeAgo: '3 week ago',
          amount: '\$200',
          status: 'SUCCESS'),
      Transaction(
          imagePath: 'https://randomuser.me/api/portraits/men/27.jpg',
          description: 'Mobile Recharges',
          timeAgo: '1 month ago',
          amount: '\$45',
          status: 'SUCCESS'),
    ];

    return transactions;
  }
}
