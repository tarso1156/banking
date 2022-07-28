import 'dart:convert';

import 'package:banking/shared/models/account/account.dart';

class Individual {
  final String id;
  final String status;
  final String? nationality;
  final Account? account;

  const Individual(
      {required this.id, required this.status, this.nationality, this.account});

  factory Individual.fromJson(Map<String, dynamic> json) {
    return Individual(
        id: json['individual_id'],
        nationality: json['nationality'],
        status: json['status']);
  }
}
