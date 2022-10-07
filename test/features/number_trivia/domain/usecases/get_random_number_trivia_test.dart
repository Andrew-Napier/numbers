import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/core/usecases/usecase.dart';
import 'package:numbers/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:numbers/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:numbers/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late GetRandomNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(mockNumberTriviaRepository);
  });

  test('should get trivia from the repository', () async {
    // arange
    const tNumberTrivia = NumberTrivia(number: 1, text: 'test');

    when(() => mockNumberTriviaRepository.getRandomNumberTrivia())
        .thenAnswer((_) => Future.value(const Right(tNumberTrivia)));
    // act
    var result = await usecase(NoParams());
    // assert

    expect(result, const Right(tNumberTrivia));
    verify(() => mockNumberTriviaRepository.getRandomNumberTrivia()).called(1);
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
