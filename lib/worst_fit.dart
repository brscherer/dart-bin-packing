class WorstFitBinPacking {
  List<List<int>> solve(List<int> items, int binCapacity) {
    List<List<int>> bins = [];

    for (var item in items) {
      int worstBinIndex = -1;
      int maxSpaceLeft = -1;

      for (var i = 0; i < bins.length; i++) {
        int currentBinWeight = bins[i].sum();

        if (currentBinWeight + item <= binCapacity &&
            binCapacity - (currentBinWeight + item) > maxSpaceLeft) {
          worstBinIndex = i;
          maxSpaceLeft = binCapacity - (currentBinWeight + item);
        }
      }

      if (worstBinIndex != -1) {
        bins[worstBinIndex].add(item);
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
