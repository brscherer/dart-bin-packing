import 'package:dart_bin_packing/first_fit.dart';
import 'package:test/test.dart';

void main() {
  group('FirstFitBinPacking', () {
    test('solves bin packing problem correctly', () {
      var firstFit = FirstFitBinPacking();
      var items = [2, 5, 4, 7, 1, 3, 8];
      var binCapacity = 10;
      var result = firstFit.solve(items, binCapacity);

      expect(result.length, 4);
      expect(
          result,
          containsAllInOrder([
            containsAll([2, 5, 1]),
            containsAll([4, 3]),
            containsAll([7]),
            containsAll([8]),
          ]));
    });
  });
}
