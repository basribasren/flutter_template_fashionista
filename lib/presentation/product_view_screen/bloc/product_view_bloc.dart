import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application22/presentation/product_view_screen/models/product_view_model.dart';
part 'product_view_event.dart';
part 'product_view_state.dart';

class ProductViewBloc extends Bloc<ProductViewEvent, ProductViewState> {
  ProductViewBloc(ProductViewState initialState) : super(initialState) {
    on<ProductViewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductViewInitialEvent event,
    Emitter<ProductViewState> emit,
  ) async {}
}
