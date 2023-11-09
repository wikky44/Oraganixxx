import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:organixxx/presentation/wishlist_screen/models/wishlist_model.dart';
part 'wishlist_event.dart';
part 'wishlist_state.dart';

/// A bloc that manages the state of a Wishlist according to the event that is dispatched to it.
class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc(WishlistState initialState) : super(initialState) {
    on<WishlistInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WishlistInitialEvent event,
    Emitter<WishlistState> emit,
  ) async {}
}
