import 'package:dart_bin_packing/best_fit.dart';
import 'package:test/test.dart';

void main() {
  group('BestFitBinPacking', () {
    test('solves bin packing problem correctly', () {
      var bestFit = BestFitBinPacking();
      var items = [2, 5, 4, 7, 1, 3, 8];
      var binCapacity = 10;
      var result = bestFit.solve(items, binCapacity);

      expect(result.length, 4);
      expect(
          result,
          containsAllInOrder([
            containsAll([2, 5, 1]),
            containsAll([4]),
            containsAll([7, 3]),
            containsAll([8]),
          ]));
    });
  });
}
