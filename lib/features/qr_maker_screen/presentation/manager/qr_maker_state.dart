part of 'qr_maker_cubit.dart';

@immutable
sealed class QrMakerState {}

final class QrMakerInitial extends QrMakerState {}

final class QrImageChanged extends QrMakerState {}

final class ColorChanged extends QrMakerState {}
