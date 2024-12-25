
import 'package:freezed_annotation/freezed_annotation.dart';

part 'a.freezed.dart';
part 'a.g.dart';

@freezed
class A with _$A {
  factory A() = _A;
	
  factory A.fromJson(Map<String, dynamic> json) =>
			_$AFromJson(json);
}
