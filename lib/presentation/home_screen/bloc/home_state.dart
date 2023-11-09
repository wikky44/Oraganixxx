// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.searchController,
    this.sliderIndex = 0,
    this.sliderIndex1 = 0,
    this.sliderIndex2 = 0,
    this.homeModelObj,
  });

  TextEditingController? searchController;

  HomeModel? homeModelObj;

  int sliderIndex;

  int sliderIndex1;

  int sliderIndex2;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        sliderIndex1,
        sliderIndex2,
        homeModelObj,
      ];
  HomeState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    int? sliderIndex1,
    int? sliderIndex2,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      sliderIndex1: sliderIndex1 ?? this.sliderIndex1,
      sliderIndex2: sliderIndex2 ?? this.sliderIndex2,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
