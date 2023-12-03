// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'fifty_item_model.dart';

/// This class defines the variables used in the [view_item_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ViewItemModel extends Equatable {
  ViewItemModel({this.fiftyItemList = const []});

  List<FiftyItemModel> fiftyItemList;

  ViewItemModel copyWith({List<FiftyItemModel>? fiftyItemList}) {
    return ViewItemModel(
      fiftyItemList: fiftyItemList ?? this.fiftyItemList,
    );
  }

  @override
  List<Object?> get props => [fiftyItemList];
}
