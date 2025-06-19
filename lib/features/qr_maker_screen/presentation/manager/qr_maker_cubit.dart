import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'qr_maker_state.dart';

class QrMakerCubit extends Cubit<QrMakerState> {
  QrMakerCubit() : super(QrMakerInitial());
}
