import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:numbers/core/error/failures.dart';
import 'package:numbers/features/number_trivia/domain/repositories/number_trivia_repository.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/number_trivia.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;
  const Params({required this.number}) : super();

  @override
  List<Object?> get props => [number];
}
