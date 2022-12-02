import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failures.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientfailure() = _MainFailure;
  const factory MainFailure.serverfailure() = _ServerFailure;
}
