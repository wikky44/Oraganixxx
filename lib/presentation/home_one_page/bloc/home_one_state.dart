// ignore_for_file: must_be_immutable

part of 'home_one_bloc.dart';

/// Represents the state of HomeOne in the application.
class HomeOneState extends Equatable {
  HomeOneState({
    this.searchController,
    this.sliderIndex = 0,
    this.sliderIndex1 = 0,
    this.sliderIndex2 = 0,
    this.homeOneModelObj,
  });

  TextEditingController? searchController;

  HomeOneModel? homeOneModelObj;

  int sliderIndex;

  int sliderIndex1;

  int sliderIndex2;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        sliderIndex1,
        sliderIndex2,
        homeOneModelObj,
      ];
  HomeOneState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    int? sliderIndex1,
    int? sliderIndex2,
    HomeOneModel? homeOneModelObj,
  }) {
    return HomeOneState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      sliderIndex1: sliderIndex1 ?? this.sliderIndex1,
      sliderIndex2: sliderIndex2 ?? this.sliderIndex2,
      homeOneModelObj: homeOneModelObj ?? this.homeOneModelObj,
    );
  }
}
