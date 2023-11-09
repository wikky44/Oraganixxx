// ignore_for_file: must_be_immutable

part of 'best_product_bloc.dart';

/// Represents the state of BestProduct in the application.
class BestProductState extends Equatable {
  BestProductState({
    this.searchController,
    this.bestProductModelObj,
  });

  TextEditingController? searchController;

  BestProductModel? bestProductModelObj;

  @override
  List<Object?> get props => [
        searchController,
        bestProductModelObj,
      ];
  BestProductState copyWith({
    TextEditingController? searchController,
    BestProductModel? bestProductModelObj,
  }) {
    return BestProductState(
      searchController: searchController ?? this.searchController,
      bestProductModelObj: bestProductModelObj ?? this.bestProductModelObj,
    );
  }
}
