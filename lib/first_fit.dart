class FirstFitBinPacking {
  List<List<int>> solve(List<int> items, int binCapacity) {
    List<List<int>> bins = [];

    for (var item in items) {
      bool placed = false;

      for (var bin in bins) {
        int currentBinWeight = bin.sum();

        if (currentBinWeight + item <= binCapacity) {
          bin.add(item);
          placed = true;
          break;
        }
      }

      if (!placed) {
        bins.add([item]);
      }
    }

    return bins;
  }
}

extension Sum on List<int> {
  int sum() => fold(0, (a, b) => a + b);
}
