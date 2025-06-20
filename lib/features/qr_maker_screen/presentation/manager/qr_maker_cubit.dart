import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';
part 'qr_maker_state.dart';

class QrMakerCubit extends Cubit<QrMakerState> {
  static QrMakerCubit get(context) => BlocProvider.of(context);
  QrMakerCubit() : super(QrMakerInitial());
  String text = '';
  void changeText(String newText) {
    text = newText;
  }

  QrImageView qrImage = QrImageView(
    size: 300.0,
    data: '',
    gapless: false,
  );
  generateQRCode() {
    qrImage = QrImageView(
      size: 300.0,
      data: text,
      gapless: false,
    );
    emit(QrImageChanged());
  }

  Color firstColor = Colors.white;
  Color secondColor = Colors.white;
  changeColor(Color fColor, Color sColor) {
    firstColor = fColor;
    secondColor = sColor;
    emit(ColorChanged());
    print('Color changed to: $firstColor, $secondColor');
  }
}
