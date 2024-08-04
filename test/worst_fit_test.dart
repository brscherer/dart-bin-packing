import 'package:dart_bin_packing/worst_fit.dart';
import 'package:test/test.dart';

void main() {
  group('WorstFitBinPacking', () {
    test('solves bin packing problem correctly', () {
      var worstFit = WorstFitBinPacking();
      var items = [2, 5, 4, 7, 1, 3, 8];
      var binCapacity = 10;
      var result = worstFit.solve(items, binCapacity);

      expect(result.length, 4);
      expect(
          result,
          containsAllInOrder([
            containsAll([2, 5]),
            containsAll([4, 1, 3]),
            containsAll([7]),
            containsAll([8]),
          ]));
    });
  });
}
