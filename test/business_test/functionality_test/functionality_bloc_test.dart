// flutter
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FunctionalityBloc', () {
    // Dependecies
    // FunctionalityBloc functionalityBloc;

    // Initialization
    setUp(() {
      // functionalityBloc = FunctionalityBloc();
    });

    // Clean up memory usage
    tearDown(() {
      // functionalityBloc.close();
    });

    // tests

    test(
      'The initial state for "FunctionalityBloc" is "FunctionalityInitialState(...)"',
      () {
        // implementing "Equatable"
        // expect(functionalityBloc.state, FunctionalityInitialState(...));
      },
    );

    /* blocTest<FunctionalityBloc, FunctionalityState>(
      'emits [FunctionalityState(...)] when FunctionalityEvent...() is added.',
      build: () => functionalityBloc,
      act: (bloc) => bloc.add(FunctionalityEvent...()),
      expect: () => const <FunctionalityState>[FunctionalityState(...)],
    ); */
  });
}
