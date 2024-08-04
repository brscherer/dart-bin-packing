import 'package:dart_bin_packing/best_fit.dart';
import 'package:dart_bin_packing/first_fit.dart';
import 'package:dart_bin_packing/worst_fit.dart';

void main(List<String> arguments) {
  List<int> items = [2, 5, 4, 7, 1, 3, 8];
  int binCapacity = 10;

  var firstFit = FirstFitBinPacking();
  var bestFit = BestFitBinPacking();
  var worstFit = WorstFitBinPacking();

  print("First-Fit Algorithm:");
  List<List<int>> resultFF = firstFit.solve(items, binCapacity);
  print("Number of bins used: ${resultFF.length}");
  for (var i = 0; i < resultFF.length; i++) {
    print("Bin ${i + 1}: ${resultFF[i]}");
  }

  print("\nBest-Fit Algorithm:");
  List<List<int>> resultBF = bestFit.solve(items, binCapacity);
  print("Number of bins used: ${resultBF.length}");
  for (var i = 0; i < resultBF.length; i++) {
    print("Bin ${i + 1}: ${resultBF[i]}");
  }

  print("\nWorst-Fit Algorithm:");
  List<List<int>> resultWF = worstFit.solve(items, binCapacity);
  print("Number of bins used: ${resultWF.length}");
  for (var i = 0; i < resultWF.length; i++) {
    print("Bin ${i + 1}: ${resultWF[i]}");
  }
}
