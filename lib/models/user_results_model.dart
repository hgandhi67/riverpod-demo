import 'package:demo_task/models/user_gym_location_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_results_model.g.dart';

@JsonSerializable()
class Result {
  final String? first_name;
  final String? last_name;
  final String? usa_boxing_id;
  final String? gender;
  final String? weight;
  final String? date_of_birth;
  final int? number_of_fights;
  final dynamic team_id;
  final String? gym_name;
  final String? picture_thumb;
  final bool? is_boxer;
  final bool? is_coach;
  final bool? is_official;
  final bool? is_matchmaker;
  final bool? is_managed_account;
  final int? id;
  final int? age;
  final GymLocationFull? gymLocationFull;

  Result({
    this.first_name,
    this.last_name,
    this.usa_boxing_id,
    this.gender,
    this.weight,
    this.date_of_birth,
    this.number_of_fights,
    this.team_id,
    this.gym_name,
    this.picture_thumb,
    this.is_boxer,
    this.is_coach,
    this.is_official,
    this.is_matchmaker,
    this.is_managed_account,
    this.id,
    this.age,
    this.gymLocationFull,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}