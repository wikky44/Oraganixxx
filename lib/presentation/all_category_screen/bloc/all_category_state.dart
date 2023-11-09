// ignore_for_file: must_be_immutable

part of 'all_category_bloc.dart';

/// Represents the state of AllCategory in the application.
class AllCategoryState extends Equatable {
  AllCategoryState({
    this.searchController,
    this.allCategoryModelObj,
  });

  TextEditingController? searchController;

  AllCategoryModel? allCategoryModelObj;

  @override
  List<Object?> get props => [
        searchController,
        allCategoryModelObj,
      ];
  AllCategoryState copyWith({
    TextEditingController? searchController,
    AllCategoryModel? allCategoryModelObj,
  }) {
    return AllCategoryState(
      searchController: searchController ?? this.searchController,
      allCategoryModelObj: allCategoryModelObj ?? this.allCategoryModelObj,
    );
  }
}
