import 'package:demo_task/models/user_results_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  final dynamic next;
  final dynamic previous;
  final int count;
  final List<Result> results;

  User({
    this.next,
    this.previous,
    required this.results,
    required this.count,
  });
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}