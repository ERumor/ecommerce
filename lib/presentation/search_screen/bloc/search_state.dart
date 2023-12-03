// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

/// Represents the state of Search in the application.
class SearchState extends Equatable {
  SearchState({
    this.nameController,
    this.searchModelObj,
  });

  TextEditingController? nameController;

  SearchModel? searchModelObj;

  @override
  List<Object?> get props => [
        nameController,
        searchModelObj,
      ];
  SearchState copyWith({
    TextEditingController? nameController,
    SearchModel? searchModelObj,
  }) {
    return SearchState(
      nameController: nameController ?? this.nameController,
      searchModelObj: searchModelObj ?? this.searchModelObj,
    );
  }
}
