import 'package:json_annotation/json_annotation.dart';

part 'coin_response.g.dart';

@JsonSerializable()
class CoinResponse {
  final String id;
  final String name;
  final String symbol;

  CoinResponse({required this.id, required this.name, required this.symbol});

  factory CoinResponse.fromJson(Map<String, dynamic> json) =>
      _$CoinResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CoinResponseToJson(this);
}
