import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/upcoming_completed_valeyball.dart';

part 'betano_state.dart';

// class ContainerEvent {
//   final int indexToRemove;
//   ContainerEvent(this.indexToRemove);
// }

class BetanoCubit extends Cubit<List<UpcomingCompletedValleyball>> {
  BetanoCubit() : super([]);

  void removeItem(int index) {
    if (index >= 0 && index < state.length) {
      final updatedList = List.of(state)..removeAt(index);
      emit(updatedList);
    }
  }

  void removeItemByImage(String imageAssetPath) {
    final index = state.indexWhere((item) => item.alarm == imageAssetPath);
    if (index != -1) {
      removeItem(index);
    }
  }
}
