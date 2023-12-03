// ignore_for_file: must_be_immutable

part of 'orders_bloc.dart';

/// Represents the state of Orders in the application.
class OrdersState extends Equatable {
  OrdersState({
    this.nameController,
    this.ordersModelObj,
  });

  TextEditingController? nameController;

  OrdersModel? ordersModelObj;

  @override
  List<Object?> get props => [
        nameController,
        ordersModelObj,
      ];
  OrdersState copyWith({
    TextEditingController? nameController,
    OrdersModel? ordersModelObj,
  }) {
    return OrdersState(
      nameController: nameController ?? this.nameController,
      ordersModelObj: ordersModelObj ?? this.ordersModelObj,
    );
  }
}
