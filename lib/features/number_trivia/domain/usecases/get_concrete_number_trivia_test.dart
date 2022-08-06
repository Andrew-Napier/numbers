import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  test(
    'should get trivia for the number from the repository',
    () async {
      // arrange

      const testNumber = 1;
      const expectedResult = NumberTrivia(number: testNumber, text: 'test');

      when(() => mockNumberTriviaRepository.getConcreteNumberTrivia(any()))
          .thenAnswer((_) => Future.value(const Right(expectedResult)));

      //acct
      var result = await usecase(const Params(number: testNumber));

      //assert
      expect(result, const Right(expectedResult));
      verify(() =>
              mockNumberTriviaRepository.getConcreteNumberTrivia(testNumber))
          .called(1);
    },
  );
}
