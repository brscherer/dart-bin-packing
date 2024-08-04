class BestFitBinPacking {
  List<List<int>> solve(List<int> items, int binCapacity) {
    List<List<int>> bins = [];

    for (var item in items) {
      int bestBinIndex = -1;
      int minSpaceLeft = binCapacity + 1;

      for (var i = 0; i < bins.length; i++) {
        int currentBinWeight = bins[i].sum();

        if (currentBinWeight + item <= binCapacity &&
            binCapacity - (currentBinWeight + item) < minSpaceLeft) {
          bestBinIndex = i;
          minSpaceLeft = binCapacity - (currentBinWeight + item);
        }
      }

      if (bestBinIndex != -1) {
        bins[bestBinIndex].add(item);
      } else {
        bins.add([item]);
      }
    }

    return bins;
  }
}

extension Sum on List<int> {
  int sum() => fold(0, (a, b) => a + b);
}
