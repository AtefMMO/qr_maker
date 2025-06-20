import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrmaker/features/qr_maker_screen/presentation/manager/qr_maker_cubit.dart';
import 'package:qrmaker/features/qr_maker_screen/presentation/view/widgets/qr_maker_viewbody.dart';

class QrMakerView extends StatelessWidget {
  const QrMakerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => QrMakerCubit(),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Theme.of(context).primaryColor,
            body: const QrMakerViewbody()));
  }
}
