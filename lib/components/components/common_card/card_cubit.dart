import 'package:flutter_bloc/flutter_bloc.dart';
import 'animated_container_properties.dart';

class CardCubit extends Cubit<AnimatedContainerProperties?> {
  CardCubit(super.initialState);
  AnimatedContainerProperties animatedContainerProperties =
      AnimatedContainerProperties();
  void onHover() {
    emit(animatedContainerProperties);
  }

  void onTap() {
    emit(animatedContainerProperties);
  }
}
