import 'package:dartz/dartz.dart';
import 'package:numbers/core/error/failures.dart';
import 'package:numbers/features/number_trivia/domain/repositories/number_trivia_repository.dart';

import '../entities/number_trivia.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> execute(int number) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
