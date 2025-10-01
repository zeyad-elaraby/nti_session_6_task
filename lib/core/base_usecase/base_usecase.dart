import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:nti_session_6_task/core/error/failure.dart';

abstract class BaseUsecase<T, Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}

class NoParameters extends Equatable {
  @override
  List<Object?> get props => [];
}
