import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

abstract class IdownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage();
}
