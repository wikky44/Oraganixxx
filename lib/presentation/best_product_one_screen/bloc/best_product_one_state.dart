// ignore_for_file: must_be_immutable

part of 'best_product_one_bloc.dart';

/// Represents the state of BestProductOne in the application.
class BestProductOneState extends Equatable {
  BestProductOneState({
    this.searchController,
    this.bestProductOneModelObj,
  });

  TextEditingController? searchController;

  BestProductOneModel? bestProductOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        bestProductOneModelObj,
      ];
  BestProductOneState copyWith({
    TextEditingController? searchController,
    BestProductOneModel? bestProductOneModelObj,
  }) {
    return BestProductOneState(
      searchController: searchController ?? this.searchController,
      bestProductOneModelObj:
          bestProductOneModelObj ?? this.bestProductOneModelObj,
    );
  }
}
