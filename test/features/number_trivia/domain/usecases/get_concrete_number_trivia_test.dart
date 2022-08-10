import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:numbers/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:numbers/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  test('should get trivia fofr the number from the repository', () async {
    // arange
    const tNumber = 1;
    const tNumberTrivia = NumberTrivia(number: 1, text: 'test');

    when(() => mockNumberTriviaRepository.getConcreteNumberTrivia(any()))
        .thenAnswer((_) => Future.value(const Right(tNumberTrivia)));
    // act
    var result = await usecase.execute(tNumber);
    // assert

    expect(result, const Right(tNumberTrivia));
    verify(() => mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber))
        .called(1);
  });
}
