import 'dart:async';

import 'package:apple_store/6-bloc/state/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
abstract class BadgeEvent {
  const BadgeEvent();
}

class OnCartTotalChanged extends BadgeEvent {
  final int total;

  const OnCartTotalChanged(this.total);
}

class BadgeBloc extends Bloc<BadgeEvent, int> {
  BadgeBloc({
    required CartBloc cartBloc,
  }) : super(0) {
    cartBlocSubs = cartBloc.stream.listen((cartProductList) {
      add(OnCartTotalChanged(cartProductList.length));
    });

    on<OnCartTotalChanged>((event, emit) {
      emit(event.total);
    });
  }

  late final StreamSubscription cartBlocSubs;

  @override
  Future<void> close() {
    cartBlocSubs.cancel();
    return super.close();
  }
}
