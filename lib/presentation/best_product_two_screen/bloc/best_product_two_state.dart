// ignore_for_file: must_be_immutable

part of 'best_product_two_bloc.dart';

/// Represents the state of BestProductTwo in the application.
class BestProductTwoState extends Equatable {
  BestProductTwoState({
    this.searchController,
    this.bestProductTwoModelObj,
  });

  TextEditingController? searchController;

  BestProductTwoModel? bestProductTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        bestProductTwoModelObj,
      ];
  BestProductTwoState copyWith({
    TextEditingController? searchController,
    BestProductTwoModel? bestProductTwoModelObj,
  }) {
    return BestProductTwoState(
      searchController: searchController ?? this.searchController,
      bestProductTwoModelObj:
          bestProductTwoModelObj ?? this.bestProductTwoModelObj,
    );
  }
}
