import 'package:numbers/core/platform/network_info.dart';
import 'package:numbers/features/number_trivia/data/datasources/number_trivia_remote_datasource.dart';
import 'package:numbers/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:numbers/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:numbers/features/number_trivia/domain/repositories/number_trivia_repository.dart';

import 'package:numbers/features/number_trivia/data/datasources/number_trivia_local_datasource.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDatasource remoteDatasource;
  final NumberTriviaLocalDatasource localDatasource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl(this.remoteDatasource, this.localDatasource, this.networkInfo, );

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
  @override

}