import 'package:equatable/equatable.dart';
import 'package:numbers/core/error/failures.dart';

import 'package:dartz/dartz.dart';
import 'package:numbers/features/number_trivia/domain/repositories/number_trivia_repository.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/number_trivia.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
