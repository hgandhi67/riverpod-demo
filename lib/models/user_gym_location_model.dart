import 'package:json_annotation/json_annotation.dart';

part 'user_gym_location_model.g.dart';

@JsonSerializable()
class GymLocationFull {
  final String? locality;
  final String? state;
  final String? state_code;
  final String? country;
  final String? country_code;
  final String? raw;

  GymLocationFull({
    this.locality,
    this.state,
    this.state_code,
    this.country,
    this.country_code,
    this.raw,
  });

  factory GymLocationFull.fromJson(Map<String, dynamic> json) => _$GymLocationFullFromJson(json);

  Map<String, dynamic> toJson() => _$GymLocationFullToJson(this);
}