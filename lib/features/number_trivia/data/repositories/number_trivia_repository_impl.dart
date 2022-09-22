import 'package:numbers/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:numbers/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:numbers/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class NumberTriviaaRespositoryImpl implements NumberTriviaRepository {
  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
